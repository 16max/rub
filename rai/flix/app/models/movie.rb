class Movie < ActiveRecord::Base
	validates_presence_of :titel, :release, :duration
	validates :description, length: { minimum: 25 }, allow_blank: true
	validates_numericality_of :total_gross, numericality: { only_integer: true }, :greater_than => 0
	#a=validates_format_of :poster_image_file, :with => /gif\z/
	#b=validates_format_of :poster_image_file, :with => /jpg\z/
	# if @movie.poster_image_file.end_with? == "gif"
	# 		validates_format_of :poster_image_file, :with => /gif\z/
	# 	elsif :poster_image_file.end_with? == "jpg"
	# 		validates_format_of :poster_image_file, :with => /jpg\z/
	# else
	# 	validates_format_of :poster_image_file, :with => /png\z/
	# end
	#validates_format_of :poster_image_file, with: /jpg\z/
	validates_format_of :poster_image_file, :with =>  lambda { |p| p.end_with?("png") || p.end_with?("jpg") ? /png\z/ : "bla" }
	# @array = []
	# @array = ["/gif\\z/", "/jpg\z/", "/png\z/"]
	#@array.each do |a|
		 
	#end

	def free?
			self.total_gross.blank? || self.total_gross.zero? || self.total_gross < 50000000
	end

	def self.upcoming
			where("release < ?", Time.now).order("release")
		end
end
