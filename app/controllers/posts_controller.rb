class PostsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show, :search]

def index
  @posts = Post.order("name")
end

def new
  @post =Post.new
end

def create
  @post = Post.new(post_params)
  if @post.valid?
    @post.save
    redirect_to root_path
    flash[:notice] = "登録できました"
  else
    @item.images.new
    render :new
    flash[:notice] = "登録できませんでした"
  end
end

def show
  @post=Post.find(params[:id])
end


def edit
@post = Post.find(params[:id])
end

def update
post =Post.find(params[:id])
post.update(post_params)
end

def destroy
  post = Post.find(params[:id])
  post.destroy
end

def search
  @post =Post.search(params[:keyword])
end


private
def post_params
  params.require('post').permit(:name,:birth_day,:gender_id,:visit_day,:menu,:talk,:image,:address,:phone_num,:mail_address,:text)
end
end

