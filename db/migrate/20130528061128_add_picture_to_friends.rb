class AddPictureToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :picture, :string, , :null => false, :default => ""
  end
end
