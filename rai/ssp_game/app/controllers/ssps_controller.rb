class SspsController < ApplicationController

	def index
		@pick = params[:pick]
		
		case @pick
		when "Schere"
			@pick = "KJHKDASFHKJDHSKJFNkjnbkjkhkh"
		end
	end

end
