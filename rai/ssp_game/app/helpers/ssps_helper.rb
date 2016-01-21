module SspsHelper

	def win?
		case @pick
		when "Schere"
			case @c_pick
			when "Schere"
				"Unentscheiden"
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
