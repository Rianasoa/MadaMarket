require 'test_helper'

class Admin::PicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_pictures_create_url
    assert_response :success
  end

end
