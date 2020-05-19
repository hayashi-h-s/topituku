# frozen_string_literal: true

class Folder < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy

  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  validates :title, presence: true
end
