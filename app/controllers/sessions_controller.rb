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
      flash[:notice] = "There was a problem logging you in. Please try again."
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been successfully logged out."
    redirect_to "/"
  end
  
end