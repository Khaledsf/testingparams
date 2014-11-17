class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end
	
	def show
		@article = Article.find(params[:id])
	end
	
	def new
		@article = Article.new
	end
	
	def edit
		@article.find(params[:id])
	end
	
	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end
	
	def update
		@article = article.find(params[:id])
		if @article.update
			redirect_to @article
		else
		 render 'edit'
		 end
	end
  
  def delete
  end
  
  def destroy
  end
	
	private
	def article_params
    params.require(:article).permit(:title, :text)
	end

end
# Alist of other notes:
# render: when render something is to point to a view template.
# link: the link_to is a rails method that takes two arguments in this case, tha action and the path.
# <%= link_to 'show', article_path(article) %>
