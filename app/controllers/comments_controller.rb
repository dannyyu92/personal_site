class CommentsController < ApplicationController
  before_filter :authenticate_admin!, except: [:create]

  def create
    @comment = Comment.new(params[:comment])
    @comment.article_id = params[:article_id]
    @comment.save
    redirect_to article_path(@comment.article_id)
  end

	def destroy
    @comment = Comment.find(params[:id])
    @comment.article_id = params[:article_id]
		@comment.destroy
		redirect_to article_path(@comment.article_id), :notice => "Comment deleted"
	end

end
