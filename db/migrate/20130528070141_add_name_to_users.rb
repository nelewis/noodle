class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, :null => false, :default => "test"
  end
end
