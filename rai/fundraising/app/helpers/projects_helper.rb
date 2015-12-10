module ProjectsHelper
	def einzahl_mehrzahl
		if @projects.size == 1
			"#{@projects.size} Projekt"
		else
			"#{@projects.size} Projekte"
		end
	end
	def pro(pro)
		if pro.past?
			"Abgelaufen"
		else
			distance_of_time_in_words_to_now(pro)
		end
	end
end
