class HomeController < ApplicationController
 
  def index
    @search = params[:search]
    @products = Product.all
    @products = @products
      .search(@search) if @search.present?
  end
end
