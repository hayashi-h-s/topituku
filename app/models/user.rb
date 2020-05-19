# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_secure_password

  has_many :folders, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_folders, through: :likes, source: :folder

  validates :name, presence: true
  # validates :email, presence: true
  # validates :password, presence: true
  mount_uploader :avatar, ImageUploader

  def already_liked?(folder)
    likes.exists?(folder_id: folder.id)
  end
end
