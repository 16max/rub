class WorkedHour < ActiveRecord::Base
  belongs_to :project
  belongs_to :employee

 	WORKED_HOUR_OPTIONS = ( 1..8 ).to_a
end
