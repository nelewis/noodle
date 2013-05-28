class AddEmailToFriend < ActiveRecord::Migration
  def change
    add_column :friends, :email, :string
  end
end
