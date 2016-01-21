class SspsController < ApplicationController

	def index
		@pick = params[:pick]
		if params[:pick]
			@c_zufall = rand(3)
		
			case @c_zufall
			when 0
				@c_pick = "Schere"
			when 1
				@c_pick = "Stein"
			when 2
					@c_pick = "Papier"
			end
		end
	end

end
