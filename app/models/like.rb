class Like < ApplicationRecord
  belongs_to :folder
  belongs_to :user

  validates_uniqueness_of :folder_id, scope: :user_id  
end