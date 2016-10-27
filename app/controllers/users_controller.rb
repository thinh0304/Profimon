class UsersController < ApplicationController


  before_action :confirm_logged_in, :except => [:new , :create]
  def index 
  	@users = User.all
  end

  def new
  	@user = User.new
  end



  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:notice] = "Signup successful"
  		params[:user] = {:id=> @user.id}
      session[:user_id] = @user.id
  		redirect_to(users_path)
  	else 
  		flash[:notice] = "Error with your signup"
  		redirect_to(new_user_path)
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

   private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :id)
  end 

end
