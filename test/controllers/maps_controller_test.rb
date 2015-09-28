require 'test_helper'

class MapsControllerTest < ActionController::TestCase
  test "should get go" do
    get :go
    assert_response :success
  end

end
