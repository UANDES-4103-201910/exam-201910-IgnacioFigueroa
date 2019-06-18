require 'test_helper'

class ShoppingCartControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shopping_cart_show_url
    assert_response :success
  end

  test "should get update" do
    get shopping_cart_update_url
    assert_response :success
  end

end
