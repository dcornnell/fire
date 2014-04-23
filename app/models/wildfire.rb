class Wildfire < ActiveRecord::Base
	belongs_to :location

	def self.search(search, type)
		if type == 1
			if search 
				joins('LEFT OUTER JOIN locations ON wildfires.location_id = locations.id').where('locations.name Like ?' , "%#{search}%" )
			 # where('start_date > ?' , "#{search}" )
			# where('name Like ?' , "%#{search}%")
			end
		elsif type == 2
			if search
				where('start_date > ?' , "#{search}" )
			end
		else 
			if search 
				 where('name Like ?' , "%#{search}%")
			end


		end
	end

end
