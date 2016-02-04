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
    @user = User.create(user_params)
    puts @user
    p user_params
    # if @user.create
    if (@user != nil && @user.save)
      log_in @user
      flash.now[:success] = "Welcome to Kohort!"
      redirect_to kohorts_path(@kohort)
    else
    #   raise @user.errors.to_yaml
    #  flash.now[:danger] = "Please try again"
    render "homepage"
    end
  end

  private

    def user_params
        params.require(:user).permit(:first_name, :email, :password, :password_confirmation)
# :age_id, :gender_id
    end
end
# , password: params[:password],  password_confirmation: params[:password_confirmation], age_id: params[:age_id],gender_id: params[:gender_id]
