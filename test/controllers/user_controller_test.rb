require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get singin" do
    get user_singin_url
    assert_response :success
  end

end
