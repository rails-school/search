class PostsController < ApplicationController
  def index
    @title = 'All posts'
    @posts = Post.all
  end
end
