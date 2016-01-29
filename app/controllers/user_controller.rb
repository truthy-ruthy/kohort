class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
    flash[:success] = "Welcome Back!"
  end

# registration form
  def new
    @user= User.new
    render 'homepage'
  end

# create user
  def create
    @user = User.new(user_params)
    p user_params
    if (@user != nil && @user.save)
      # log_in @user
      puts 'success'
      flash[:success] = "Welcome!"
      redirect_to kohorts_path
    else
      puts "--------------"
      puts "rahhhhh"
      puts "--------------"
      flash[:danger] = "Please try again"
      render 'homepage'
    end
  end

# def force
#   session[:user_id] = nil
#   render 'homepage'
# end
  private

    def user_params
        params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :age_id, :gender_id)

    end
end
# , password: params[:password],  password_confirmation: params[:password_confirmation], age_id: params[:age_id],gender_id: params[:gender_id]
