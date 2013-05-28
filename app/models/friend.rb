class Friend < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :address, :dob, :name, :picture, :created_at, :email
end
