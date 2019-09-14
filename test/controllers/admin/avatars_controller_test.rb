require 'test_helper'

class Admin::AvatarsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_avatars_create_url
    assert_response :success
  end

end
