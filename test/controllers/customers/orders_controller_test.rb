require 'test_helper'

class Customers::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get confirm" do
    get customers_orders_confirm_url
    assert_response :success
  end

end
