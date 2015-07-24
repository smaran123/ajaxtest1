class ArticlesController < ApplicationController

	before_action :set_article, :except => [:index,:new,:create]

	def new
		@article = Article.new
	end

	def index
		@articles = Article.all
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to articles_path
		else
			render :new
		end
	end

	def show
		@comments=@article.comments
	end

	def edit
	end

	def update
		if @article.update(article_params)
			redirect_to articles_path
		else
			render :edit
		end
	end

	def destroy
		@article.destroy
		redirect_to articles_path
	end

	private

	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit!
	end
end
