class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city_name
      t.integer :woeid

      t.timestamps null: false
    end
  end
end
