# frozen_string_literal: true

require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
    aws_secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
    region: 'ap-northeast-1'
  }

  # config.fog_directory  = 'topituku'
  # config.cache_storage = :fog

  case Rails.env
    # when 'production'
    #   config.fog_directory  = 'topituku'
    #   config.cache_storage = :fog
  when 'development'
    config.fog_public = false
    config.fog_directory = 'dev.topituku'
    config.cache_storage = :fog

  when 'test'
    config.fog_directory = 'test.dummy'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.dummy'
  end
end

if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Amazon S3用の設定 #
      provider: 'AWS',
      region: 'ap-northeast-1',
      aws_access_key_id: Rails.application.credentials.aws[:access_key_id],
      aws_secret_access_key: Rails.application.credentials.aws[:secret_access_key]
    }
    config.fog_directory = 'topituku'
    config.asset_host = 'https://topituku.s3.amazonaws.com'
  end

  # 日本語ファイル名の設定
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
end
