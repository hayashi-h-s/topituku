CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIA3AST6REKC5CJCKE',
    aws_secret_access_key: 'JpBUN+VsZFMqBomE7XNR1wSVfeng00BghzBHXcak',
    region: 'ap-northeast-1'
  }

  case Rails.env
    when 'production'
      config.fog_directory = 'dummy'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dummy'

    when 'development'
      config.fog_directory = 'topituku'
      config.asset_host = 'https://s3.ap-northeast-1.amazonaws.com/topituku'

    when 'test'
      config.fog_directory = 'test.dummy'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.dummy'
  end
end