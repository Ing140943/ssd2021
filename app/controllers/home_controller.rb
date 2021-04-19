class HomeController < ApplicationController
 
  # def index
  #   @search = params[:search]
  #   @products = Product.all
  #   @products = @products
  #     .search(@search) if @search.present?
  # end
  def index
    @search = params[:search]
    @products = Product.all.page(params[:page]).per(25)
    @products = @products
      .search(@search) if @search.present?
  end

end
