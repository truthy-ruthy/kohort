class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
    debugger
  end

  def new
    @user= User.new
  end

  def create
    @user = User.new(params[:user])
    p params
    if @user.save

    else
      render 'new'
    end
  end

  def my_account
  end

  def login

 end

  def logout
  end

  def register
  end
end
