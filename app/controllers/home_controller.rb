class HomeController < ApplicationController
  def index
    @products = Product.all
  end

  def handsets
    @products = Product.where(product_type: "Handset")
    render 'home/index'
  end

  def subscriptions
    @products = Product.where(product_type: "Subscription")
    render 'home/index'
  end

  def prepay_options
    @products = Product.where(product_type: "Prepay option")
    render 'home/index'
  end
end
