class UsersController < ApplicationController
  def index
    @newbook = Book.new
    @user = User.all
  end

  def show
    @newbook = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name,:profile_image,:introduction)
  end

end
