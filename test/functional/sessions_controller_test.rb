require 'test_helper'
include SessionsHelper

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    dave = users(:one)
    post :create, email: dave.email, password: 'secret'
    assert_redirected_to root_url
    assert_equal dave, @controller.current_user 

  end

  test "should logout" do
    delete :destroy
    assert_redirected_to login_url
  end

end
