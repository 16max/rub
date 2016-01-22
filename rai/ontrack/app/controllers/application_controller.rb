class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	#session[:user_id] = nil
  	@current_user = User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def require_signin
  	unless current_user
  		redirect_to signin_path, alert: "Erst einloggen, dann wohlfühlen."
  	end
  end

  def admin?
    unless current_user.admin?
        redirect_to request.path, alert: "Darf nur der Admin"
    end
  end

end
