class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.boolean :admin

      t.integer :location1
      t.integer :location2
      t.integer :location3

      t.timestamps null: false
    end
  end
end
