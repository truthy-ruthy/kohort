class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
    flash[:success] = "Welcome Back!"
  end

# login
  def new
    @user= User.new
    render 'kohort/my_kohorts'
  end

# register
  def create
    @user = User.new(user_params)
    p params
    if @user.save
      flash[:success] = "Welcome!"
      redirect_to kohorts_path
    else
      render 'homepage'
    end
  end

  private

    def user_params
        params.require(:user).permit(:first_name, :email, :password_digest,  :password_confirmation, :age_id, :gender_id)
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
