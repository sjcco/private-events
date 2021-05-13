class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Welcome back #{user.name}, you are succesfully logged in"
    else
      flash.now.alert = "User does not exists"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Succesfully logged out"
  end
end
