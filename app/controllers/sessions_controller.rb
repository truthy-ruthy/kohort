class SessionsController < ApplicationController

  def new
  end

  def create
    p params
    user = User.find_by(email:params[:session][:email])
    if user && user.authenticate(params[:password])
      log_in user
      flash[:success] = "Welcome back!"
      redirect_to kohorts_path
    else
      flash[:danger] = "Invalid email/password combination"
      render 'user/homepage.html.erb'
    end
  end

  def destroy
    log_out
    redirect_to user_path
  end
end
