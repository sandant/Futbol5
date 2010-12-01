class CommentsController < ApplicationController
  def index
  end
  
  def create
    @newComment = Comment.new(params[:comment])
    if @newComment.save
	  flash[:message] = "se guardo el comentario"
	  redirect_to :controller => "posts", :action => "show", :id => @newComment.post_id
	else
	  flash[:message] = "No se guardo el comentario"
	  redirect_to :controller => "posts", :action => "show", :id => @newComment.post_id
	end
  end

end