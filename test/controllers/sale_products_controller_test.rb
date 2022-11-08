require "test_helper"

class SaleProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get add_product_to_cart" do
    get sale_products_add_product_to_cart_url
    assert_response :success
  end
end
