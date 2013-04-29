class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.date :dob
      t.string :address

      t.timestamps
    end
  end
end
