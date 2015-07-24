class CommentsController < ApplicationController
	
	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		respond_to do |format|
			format.js
		end
	end

def index
	@comments = Comment.all
end

	def edit
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		respond_to do |format|
			format.js
		end

	end

	def update
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.update(comment_params)
			respond_to do |format|
			format.js
		end
		#redirect_to @article
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy

	end


	private
	def comment_params
		params.require(:comment).permit!
	end

end
