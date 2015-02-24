class UsersController < ApplicationController

  def index
    @users = User.all
    @posts = Post.all
  end

  def show
    @user = User.find(params[:id])
    @username = @user.email.split("@")[0] # OR @user.email[/[^@]+/]
    @all_likes = @user.likes.count
  end

end
