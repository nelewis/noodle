class User < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable :process_geocoding => false
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
		 :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :encrypted_password, :password_confirmation, :remember_me, :picture, 
                  :name, :created_at, :latitude, :longitude, :address
  
end
