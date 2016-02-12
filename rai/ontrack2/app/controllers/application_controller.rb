class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
  	@current_user = User.find( session[ :user_id ] ) if session[ :user_id ]
  end

  def require_admin
  	unless current_user.admin?
  		redirect_to root_path , alert: "Kein Zugriff"
  	end
  end

  def require_signin
  	unless current_user
  		redirect_to login_path , alert: "Du musst für diese Aktion angemeldet sein!"
  	end
  end

  def require_teamleiter
    unless current_user.teamleiter? || current_user.admin?
      redirect_to root_path , alert: "Kein Zugriff, frage deinen Teamleiter!"
    end
  end

end
