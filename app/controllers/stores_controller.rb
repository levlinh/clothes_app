class StoresController < ApplicationController
  include StoresConcern
  def index
    @products = Product.load_product_for_home_page
                       .paginate(page: params[:page], per_page: Settings.page)
    @category_parents = Category.top_level
    load_product_by_cate
  end
end
