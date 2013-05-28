class AddLatitudeAndLongitudeToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :latitude, :float
    add_column :friends, :longitude, :float
  end
end
