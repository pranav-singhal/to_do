require 'test_helper'

class FolloweduserControllerTest < ActionController::TestCase
  test "should get followuser" do
    get :followuser
    assert_response :success
  end

end
