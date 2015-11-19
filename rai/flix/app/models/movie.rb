class Movie < ActiveRecord::Base
	def free?
			self.total_gross.blank? || self.total_gross.zero? || self.total_gross < 50000000
	end

	def self.upcoming
			where("release < ?", Time.now).order("release")
		end
end
