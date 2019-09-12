require 'test_helper'

class Provider::PicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get provider_pictures_new_url
    assert_response :success
  end

  test "should get create" do
    get provider_pictures_create_url
    assert_response :success
  end

end
