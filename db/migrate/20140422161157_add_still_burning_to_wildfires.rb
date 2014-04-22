class AddStillBurningToWildfires < ActiveRecord::Migration
  def change
  	add_column :wildfires, :still_burning, :boolean
  end
end
