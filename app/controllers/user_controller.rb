class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
    flash[:success] = "Welcome Back!"
  end

# registration form
  def new
    @user= User.new
    render 'kohort/my_kohorts'
  end

# create user
  def create
    @user = User.new(user_params)
    p params
    if @user.save
      flash[:success] = "Welcome!"
      redirect_to kohorts_path
    else
      flash[:danger] = "Please try again"
      render 'homepage'
    end
  end

def force
  session[:user_id] = nil
  render 'homepage'
end
  private

    def user_params
        params.require(:user).permit(:first_name, :email, :password,  :password_confirmation, :age_id, :gender_id)
      end



 #
 #  def my_account
 #  end
 #
 #  def login
 #
 # end
 #
 #  def logout
 #  end
 #
 #  def register
 #  end
end
