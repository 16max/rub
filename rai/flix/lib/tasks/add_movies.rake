namespace :import do
	desc "Datei einlesen"
	task :add_movies => :environment do
		path = Rails.root.to_s + "/docs/movies.csv"
		file = File.open( path , "r" )
		while !file.eof?
			line = file.readline
			items = line.split( ";" )
			Movie.create( titel: items[ 0 ] , rating: items[ 1 ] , release: items[ 2 ] , description: items[ 3 ] , cast: items[ 4 ] , director: items[ 5 ] )
		end
	end
end