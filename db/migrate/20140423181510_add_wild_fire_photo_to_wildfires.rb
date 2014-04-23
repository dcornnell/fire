class AddWildFirePhotoToWildfires < ActiveRecord::Migration
  def change
  	add_column :wildfires, :wildfire_photo, :string
  end
end
