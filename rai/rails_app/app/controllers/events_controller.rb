class EventsController < ApplicationController
	def index
		@events = Event.upcoming
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new	
	end

	def create
		@event = Event.create(event_params)
		redirect_to event_path(@event.id)
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update(event_params)
		redirect_to event_path(@event.id)
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end
	private
		def event_params
			permitted_params = params.require(:event).permit(:name, :desciption, :location, :price, :start_at)
		end
end
