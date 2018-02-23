class ArticlesController < ApplicationController

  before_action :verify_admin, except: [:index, :show]

  def index
    @articles = Article.all.order(created_at: :desc)
    @articles = @articles.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to admin_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, user_ids: [])
  end

  def verify_admin
    unless current_user
      redirect_to login_path
    end
  end

  end
