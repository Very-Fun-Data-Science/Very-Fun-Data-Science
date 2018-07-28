class ArticlesController < ApplicationController

  def index
  end

  def show
    render params[:article]
  end

end
