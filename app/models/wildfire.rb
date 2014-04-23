class Wildfire < ActiveRecord::Base
	belongs_to :location
	mount_uploader :wildfire_photo, WildfirePhotoUploader
	scope :still_burning, -> {where(still_burning: true)}

	def self.start_date(start_date)
		where('start_date > ?', start_date)
	end

	def self.location(location)
		
		joins('JOIN locations ON wildfires.location_id = locations.id').where('locations.name Like ?', location)
	end

	def self.search(params)
		burning = params[:still_burning]
		user_input = params[:search]
		start_date = params[:start_date]
		location = params[:location]
		search = Wildfire.all

		if location.present? 
			 search = search.location(location)
		end

		if burning.present?
				search = search.still_burning
		end

		if start_date.present?
				search = search.start_date(start_date)
			end

		if user_input = " "
				search = search.where('wildfires.name Like ?' , "%#{user_input}%" )
		end
			 
	end

	

end
