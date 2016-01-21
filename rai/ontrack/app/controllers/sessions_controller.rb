class SessionsController < ApplicationController

	def new
	end

	def create
		if user = User.authenticate(params[:email],params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Erfolgreich angemeldet!"
			redirect_to events_path
		else
			flash.now[:alert] = "Ungültige Anmeldedaten!"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: "Erfolgreich ausgelogt."
	end

end
