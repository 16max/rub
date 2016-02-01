# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create( title: "Prüfung Entwickeln und Programmieren" , description: "Programmieren mit Rails" , start_date: Date.today )
Project.create( title: "Prüfung Administrieren" , description: "Linux" , start_date: Date.today )
Project.create( title: "Facharbeit" , description: "alles" , start_date: Date.today )