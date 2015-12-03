module ProjectsHelper
	def einzahl_mehrzahl
		if @projects.size == 1
			"#{@projects.size} Projekt"
		else
			"#{@projects.size} Projekte"
		end
	end
end
