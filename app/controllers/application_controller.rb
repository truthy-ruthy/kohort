class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

# private

  # def require_authentication
  #   if @current_user == nil or session[:user_id] != @current_user.id
  #     flash.now[:error] = "You must be logged in to access this section"
  #      redirect_to root_url
  #    else
  #      render 'my_kohorts'
  #   end
  # end

  private

    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to root_url # halts request cycle
      end
    end
end
