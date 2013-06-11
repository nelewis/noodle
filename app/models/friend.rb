class Friend < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable :process_geocoding => false
  attr_accessible :address, :dob, :name, :picture, :created_at, :email, :latitude, :longitude
  
  def self.by_month(month)
    case ActiveRecord::Base.connection.adapter_name  
      when 'SQLite'
        where("date(dob) like '%-0?-%' or date(dob) like '%-?-%'", month.id, month.id)
      when 'PostgreSQL'
        where("extract(month from dob) = ?", month.id)
    else
      raise 'Query not implemented for this DB adapter'
    end
  end
end
