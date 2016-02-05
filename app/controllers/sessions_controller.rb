class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to kohorts_path(@kohort), notice: "Welcome Back!"
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'user/homepage'
    end
  end

  def destroy
    log_out
    redirect_to root_url, notice: "You have successfully logged out."
  end


end
