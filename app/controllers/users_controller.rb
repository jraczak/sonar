class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user])
    if @user.save
      flash[:success] = "Account successfully created. Welcome to Sonar!"
      redirect_to @user
    else
    render 'new'
    end
  end
  
  
end
