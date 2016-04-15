# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create( title: "E-Commerce-App" , description: "Programmieren einer Webapplikation" , start_date: Date.today , max_hours: 200 ).employees.create( [ { vorname: "Theo" , nachname: "Sommer" } , { vorname: "Peter" , nachname: "Pan" } ] )