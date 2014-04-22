class Wildfire < ActiveRecord::Base
	belongs_to :location

	def self.search(search)
		if search 
			find(:all, :conditions => ['name Like ?' , "%#{search}%"])
		else
			find(:all)
		end
	end

end
