# frozen_string_literal: true

FactoryBot.define do
  factory :folder do
    title { 'folderのtitle' }
    association :user
  end
end
