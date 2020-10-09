class ArticlesController < ApplicationController
  def new; end

  def create
    # render plain: params[:articles].inspect
    raise params.inspect
  end
end
