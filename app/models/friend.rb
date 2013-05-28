class Friend < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable :process_geocoding => false
  attr_accessible :address, :dob, :name, :picture, :created_at, :email, :latitude, :longitude
end
