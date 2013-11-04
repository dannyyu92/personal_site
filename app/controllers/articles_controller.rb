class ArticlesController < ApplicationController
  before_filter :authenticate_admin!, except: [:index, :show]
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to @article, notice: "Article was successfully created."
    else
      render action: "new"
    end
  end

  # PUT /articles/1
  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(params[:article])
      redirect_to @article, notice: "Article was successfully updated."
    else
      render action: "edit"
    end
  end

  # DELETE /articles/1
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_url
  end
end
