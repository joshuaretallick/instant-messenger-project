class Channel < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
