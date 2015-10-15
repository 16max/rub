class Kredit
	attr_accessor :kredit
	attr_writer :jahresgehalt 

	def initialize(kundendaten)
		@kunde = kundendaten
	end
	 def kundendaten
	 	"#{@kunde} Jahresgehalt: #{@jahresgehalt} € Kredit: #{@kredit} €"
	 end
	def kreditvergabe
		if @jahresgehalt >= 6 * @kredit
			"Der Kredit in Höhe von #{@kredit} kann gewährt werden"
		else
			"Der Kredit kann leider, auf Grund eines zu geringen Einkommens, nicht gewährt werden."
		end
	end
	def abzahlung(monate)
		"Bei einer Rückzahlung des Kredits von #{@kredit} € innerhalb von #{monate} Monaten ist pro Monat eine Zahlung von #{@kredit / monate} € notwendig."
	end
end