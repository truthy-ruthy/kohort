class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email:params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:danger] = "Welcome back!"
      redirect_to kohorts_path
    else
      flash[:danger] = "Invalid email/password combination"
      render 'user/homepage.html.erb'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
