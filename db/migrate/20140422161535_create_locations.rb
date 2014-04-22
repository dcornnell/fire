class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.string :name
    	t.boolean :fire_prevention
      t.timestamps
    end
  end
end
