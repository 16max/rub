class RegistrationsController < ApplicationController
	before_action :set_event
	before_action :require_signin

	def index
		@registrations = @event.registrations
	end

	def new
		@registration = @event.registrations.new
	end

	def create
		@registration = @event.registrations.new(registration_params)
		@registration.user_id = current_user.id
		if @registration.save
			redirect_to event_path(@event.id), alert: "Richtig Krass!"
		else
			render "new"
		end
	end

	def destroy
			Registration.find(params[:id]).destroy
    	respond_to do |format|
	      format.html { redirect_to event_registrations_url( @event.id ), notice: 'User was successfully destroyed.' }
	    end
	end

private
	def registration_params
		params.require(:registration).permit(:user_id , :event_id , :how_heard)
	end
end
