module MovieHelper
		def ein_mehrzahl
			if @movies.size == 1
				"Movie"
			else
				"Movies"
			end
		end

		def top_or_flop(movie)
			if movie.total_gross < 50000000
				"Flop!"
			else
				number_to_currency(movie.total_gross, unit: "€ ")
			end
		end

		def text_verkürzt(movie)
			truncate(movie.description, length: 40, seperator: "")
		end
end
