require 'test_helper'

class Customers::CartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_cart_items_index_url
    assert_response :success
  end

end
