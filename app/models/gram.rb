class Gram < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :message, presence: true
  validates :picture, presence: true

  mount_uploader :picture, PictureUploader
end
