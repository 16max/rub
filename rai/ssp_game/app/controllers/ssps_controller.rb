class SspsController < ApplicationController

	helper_method :win?

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

			@result = win?

			Ssp.create(pick: "#{@pick}" , result: "#{@result}")

		end

		@wins = Ssp.where("result = ?" , "Sieg").count
		@defeats = Ssp.where("result = ?" , "Niederlage").count
		@draws = Ssp.where("result = ?" , "Unentschieden").count

		@wins_schere = Ssp.where("pick = ? AND result = ?" , "Schere" , "Sieg").count
		@defeats_schere = Ssp.where("pick = ? AND result = ?" , "Schere" , "Niederlage").count
		@draws_schere = Ssp.where("pick = ? AND result = ?" , "Schere" , "Unentschieden").count

		@wins_stein = Ssp.where("pick = ? AND result = ?" , "Stein" , "Sieg").count
		@defeats_stein = Ssp.where("pick = ? AND result = ?" , "Stein" , "Niederlage").count
		@draws_stein = Ssp.where("pick = ? AND result = ?" , "Stein" , "Unentschieden").count

		@wins_papier = Ssp.where("pick = ? AND result = ?" , "Papier" , "Sieg").count
		@defeats_papier = Ssp.where("pick = ? AND result = ?" , "Papier" , "Niederlage").count
		@draws_papier = Ssp.where("pick = ? AND result = ?" , "Papier" , "Unentschieden").count

	end

	def win?
		case @pick
		when "Schere"
			case @c_pick
			when "Schere"
				"Unentschieden"
			when "Stein"
				"Niederlage"
			when "Papier"
				"Sieg"
			end
		when "Stein"
			case @c_pick
			when "Schere"
				"Sieg"
			when "Stein"
				"Unentschieden"
			when "Papier"
				"Niederlage"
			end
		when "Papier"
			case @c_pick
			when "Schere"
				"Niederlage"
			when "Stein"
				"Sieg"
			when "Papier"
				"Unentschieden"
			end
		end
	end

end
