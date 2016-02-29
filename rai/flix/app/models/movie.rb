class Movie < ActiveRecord::Base
	has_many :reviews

	#validates_presence_of :titel, :release, :duration, :message => "muss ausgefüllt sein"
	#validates_length_of :description, :minimum => 25, allow_blank: true, :message => "ist zu kurz. Die Mindestlänge beträgt 25 Zeichen."
	#validates_numericality_of :total_gross, numericality: { only_integer: true }, :greater_than => 0, :message => "ist Null oder keine Zahl."
	#validates_format_of :poster_image_file, :with => /gif\z/
	#validates_format_of :poster_image_file, :with => %r{\.(gif\z|jpg\z|png\z)}, :message => "darf nur im gif-, jpg- oder png-Format sein."
	#validates_inclusion_of :rating, in: %w( G PG PG-13 R NC-17 ), :message => "benötigt die Angabe: G, PG, PG-13, R oder NC-17"

	def rating=(val)
		self[:rating] = val.upcase
	end

	def free?
			self.total_gross.blank? || self.total_gross.zero? || self.total_gross < 50000000
	end

	def self.upcoming
			where("release < ?", Time.now).order("release")
	end
end
