# frozen_string_literal: true

class Channel < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments
end
