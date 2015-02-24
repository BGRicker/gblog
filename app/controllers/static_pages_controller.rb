class StaticPagesController < ApplicationController
  def index
    @posts = Post.all
    @last = Post.last
  end
end
