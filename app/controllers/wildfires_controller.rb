class WildfiresController < ApplicationController
	
	def index
		@wildfires = Wildfire.all
	end

	def new
		@new_wildfire = Wildfire.new
	end

	def create
		@new_wildfire = Wildfire.new(wildfire_params)
		if @new_wildfire.save
			redirect_to wildfires_path
		else
			redirect_to new_wildfires_path
		end
	end

	def search
		
		@search_results = Wildfire.search(params[:search])
		render results_wildfires_path 
	end

	def download_wildfire_photo
 		@wildfire = Wildfire.find(params[:id])
 		file = @wildfire.wildfire_photo
 		send_file file.path
 	end

 	def show
 		@wildfire = Wildfire.find(params[:id])
 	end





private

	def wildfire_params
		params.require(:wildfire).permit!
	end
end
