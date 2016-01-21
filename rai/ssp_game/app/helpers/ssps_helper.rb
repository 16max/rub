module SspsHelper

	def unentschieden
		@result = "Unentschieden"
	end
	def sieg
		@result = "Sieg"
	end
	def niederlage
		@result = "Niederlage"
	end

	def schere
		image_tag("schere.jpg" , size: "150x100")
	end

	def stein
		image_tag("stein.jpg" , size: "150x100")		
	end

	def papier
		image_tag("papier.jpg" , size: "150x100")
	end

end
