require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
    p assigns(:tweets)
    assert_not_nil assigns(:tweets)
  end
end
