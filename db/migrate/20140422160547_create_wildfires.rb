class CreateWildfires < ActiveRecord::Migration
  def change
    create_table :wildfires do |t|
    	t.string :name
    	t.date :start_date
    	t.string :size
    	t.integer :location_id
    	
      t.timestamps
    end
  end
end
