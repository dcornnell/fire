class Wildfire < ActiveRecord::Base
	belongs_to :location

	def self.search(search)
		if search 
			joins('LEFT OUTER JOIN locations ON wildfires.location_id = locations.id').where('locations.name Like ?' , "%#{search}%" )
			# where('start_date > ?' , "#{search}" )
			# where('name Like ?' , "%#{search}%")
		else
			find(:all)
		end
	end

end
