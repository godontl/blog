class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def new
    @article =Article.new
  end

  def show
<<<<<<< HEAD
=======
    @article = Article.find(params[:id])
>>>>>>> main
  end

  def create
    @article = Article.new(article_params)
    if @article.save
     flash[:notice] = "Article was successfully created"
     redirect_to article_path(@article)
    else
     render 'new'
    end
  end

  def edit
<<<<<<< HEAD
  end

  def update
=======
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
>>>>>>> main
    if @article.update(article_params)
     flash[:notice] = "Article was updated"
     redirect_to article_path(@article)
    else
     flash[:notice] = "Article was not updated"
     render 'edit'
    end
  end

<<<<<<< HEAD
  def index
    @articles = Article.all
  end

  def destroy
    @article.destroy
    flash[:notice] = "Article was deleted"
    redirect_to articles_path
  end

=======
>>>>>>> main
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
<<<<<<< HEAD
    def set_article
      @article = Article.find(params[:id])
    end
=======
>>>>>>> main

end
