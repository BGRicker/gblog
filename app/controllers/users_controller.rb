class UsersController < ApplicationController

  def index
    @users = User.all
    @posts = Post.all
  end

  def show
    @user = User.find(params[:id])
    @all_likes = @user.likes.count
  end

end
