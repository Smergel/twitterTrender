class SessionsController < ApplicationController

  def new
  end

  def create 
    @user = User.authenticate(params[:user_name], params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "let's see what's trending, " << current_user.user_name
      redirect_to "/"
    else
      flash[:alert] = "There was a problem logging you in.<br/> Please try again."

      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:alert] = "You have been successfully logged out."
    redirect_to "/"
  end
  
end