module ShoppingCartHelper

  def shopping_cart_get_products
    if session[:shopping_cart].nil?
      return []
    end
    session[:shopping_cart]
  end
end
