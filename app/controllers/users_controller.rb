class UsersController < ApplicationController
  def index
    #@user = current_user
    #@book = Book.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update
    redirect_to user_path(user.id)
  end
end
