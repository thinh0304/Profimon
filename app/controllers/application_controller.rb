class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private 

  #Helper to confirm if user is logged in, redirects to login if not
  def confirm_logged_in
  	unless session[:user_id]
  		flash[:notice] = "Please Log in."
  		redirect_to(login_path)
  	end
  end

  def confirm_admin
  	unless session[:admin]
  		flash[:notice] = "You are not an admin."
  		redirect_to user_path
  	end
  end

end
