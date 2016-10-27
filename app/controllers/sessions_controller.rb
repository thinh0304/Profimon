class SessionsController < ApplicationController
  

  def new
  end

  def create
  	if params[:session][:name].present? && params[:session][:password].present?
  		user = User.find_by(name: params[:session][:name])
  		if user
  			authorized_user = user.authenticate(params[:session][:password])
  		end
  	end

  	if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "You are now logged in."
      redirect_to user_path(:id => authorized_user.id)
    else
      flash.now[:notice] = "Invalid username/password combination."
      render('new')
    end
  end


end
