class WorkedHoursController < ApplicationController
	def create
		WorkedHour.create( worked_hour_params )
		redirect_to project_path( params[ :project_id ] )
	end
private
	def worked_hour_params
		params.permit( :project_id , :employee_id , :hours )
	end
end
