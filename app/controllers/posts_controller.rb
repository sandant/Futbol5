class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
	@newComment = Comment.new
  end
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
	if @post.save
	  flash[:message] = "Su nuevo post se creo con exito!"
	  render :action => "new"
	else
	  flash[:message] = "No hemos podido crear su nuevo post!"
	  render :action => "new"	  
	end
  end

end
