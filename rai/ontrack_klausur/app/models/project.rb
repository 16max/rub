class Project < ActiveRecord::Base
	has_many :employees

	has_many :worked_hours

	def xxx
		self.worked_hours.sum( :hours )
	end

	def zzz
		self.max_hours - self.xxx
	end
end
