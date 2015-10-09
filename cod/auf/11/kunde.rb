class Kunde
	attr_accessor :name
	attr_accessor :gehalt
	attr_writer :adresse
	
	def initialize(name)
		@name = name
	end
	def kundendaten
		"#{@name.split.first.capitalize} #{@name.split.last.capitalize}, #{@adresse}"
	end
end