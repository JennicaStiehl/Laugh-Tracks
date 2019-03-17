class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def index
    @users = User.where(archived: false).entries
  end

  def archived
    @users = User.where(archived: true).entries
    render action: :index
  end
private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
