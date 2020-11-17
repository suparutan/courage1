class Posts::SearchesController < ApplicationController
  def index
  @posts =Post.search(params[:keyword])
  end
  def edit
  @post =Post.search(params[:keyword])
  end
  def update
    post=Post.search(params[:keyword])
    post.search(post_params)
  end
end
