class AddPictureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :picture, :string, :null => false, :default => ""
  end
end
