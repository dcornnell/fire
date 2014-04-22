class ChangeSizeColumnNameInWildfireTable < ActiveRecord::Migration
  def change
  	rename_column :wildfires, :size, :fire_size
  end
end
