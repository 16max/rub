require_relative "kunde"
require_relative "kredit"

kunde1 = Kunde.new("Theo Sommer")
kunde1.name = "Theo Sonnenschein"
kunde1.gehalt = 2000
kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"

kredit1 = Kredit.new(kunde1.kundendaten)
kredit1.jahresgehalt = kunde1.gehalt * 12
kredit1.kredit = 5000
puts kredit1.kundendaten
puts kredit1.kreditvergabe
puts kredit1.abzahlung(10)