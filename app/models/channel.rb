class Channel < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :messages
end
