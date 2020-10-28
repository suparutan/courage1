class PostsController < ApplicationController
def index
  @posts = Content.all
end

def new
  @post =Content.new
end

def create
  Post.create(post_params)
end


private
def content_params
  params.require('content').permit(:name,:birth_day,:gender,:visit_day,:menu,:talk,:image)
end
end

