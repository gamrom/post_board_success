class HomeController < ApplicationController
  def index
  end

  def write
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    redirect_to "/home/list"
  end

  def real_update
    @one_post = Post.find(params[:post_id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to "/home/list"
  end

  def update
    @one_post = Post.find(params[:post_id])
  end

  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to "/home/list"
  end

  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    @one_post.save
    redirect_to "/home/list"
  end

  def list
    @every_post = Post.all
  end
end
