class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create
    Post.create(title: params[:title], content: params[:text], img: params[:img])
    # @post = Post.new
    # @post.title = params[:title]
    # @post.content = params[:text]
    # @post.img = params[:img]
    # @post.save

    redirect_to '/'
  end

  def delete
    Post.find(params[:id]).destroy

    redirect_to '/'
  end
end
