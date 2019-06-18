class ShoppingCartController < ApplicationController
  def show
    @products = helpers.shopping_cart_get_products
  end

  def update
  end

  def add_product
    session[:shopping_cart] ||= []

    begin
      product = Product.find(shopping_cart_params[:id])
    rescue
      redirect_back(fallback_location: root_path); flash[:danger] = "Invalid product"
    end

    session[:shopping_cart] << product
    redirect_back(fallback_location: root_path); flash[:success] = "Product successfully added to cart"
  end

  def shopping_cart_params
    params.permit(:utf8, :_method, :authenticity_token, :commit, :id)
  end
end
