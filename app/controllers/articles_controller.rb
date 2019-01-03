class ArticlesController < ApplicationController

	def show
		@article = article.find(params[:id])
	end

	def new

	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to @article
	end
	
	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
