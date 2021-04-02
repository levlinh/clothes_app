class StoresController < ApplicationController
  def index
    @products = Product.load_product_for_home_page
                       .paginate(page: params[:page], per_page: Settings.page)
  end
end
