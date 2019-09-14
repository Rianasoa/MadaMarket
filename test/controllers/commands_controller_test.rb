require 'test_helper'

class CommandsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get commands_create_url
    assert_response :success
  end

  test "should get new" do
    get commands_new_url
    assert_response :success
  end

  test "should get index" do
    get commands_index_url
    assert_response :success
  end

  test "should get update" do
    get commands_update_url
    assert_response :success
  end

  test "should get edit" do
    get commands_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get commands_destroy_url
    assert_response :success
  end

end
