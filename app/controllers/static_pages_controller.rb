class StaticPagesController < ApplicationController
  def index
    @last = Post.last
  end
end
