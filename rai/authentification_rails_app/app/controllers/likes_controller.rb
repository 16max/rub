class LikesController < ApplicationController
	before_action :require_signin
	before_action :set_event
	def create
		@event.likers << current_user
		redirect_to @event , notice: "mag ich :)"
	end

	def destroy
		current_user.likes.find_by( user_id: params[ :id ] ).destroy
		redirect_to @event , notice: "mag ich nicht mehr :("
	end
end
