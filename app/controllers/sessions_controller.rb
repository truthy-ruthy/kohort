class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase) if user && user.authenticate(params[:session][:password])
      login_user
      redirect_to kohorts_path
    else
      flash[:danger] = "Invalid email/password combination"
      render 'homepage'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
