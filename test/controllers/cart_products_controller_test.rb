require 'test_helper'

class CartProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cart_products_index_url
    assert_response :success
  end

  test "should get create" do
    get cart_products_create_url
    assert_response :success
  end

  test "should get new" do
    get cart_products_new_url
    assert_response :success
  end

end
