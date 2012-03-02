require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      name: "sam",
      email: "sam@hello.com",
      password: "password",
      password_confirmation: "password"
    }

    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: @input_attributes
    end

    assert_redirected_to '/' 
  end

  test "should show user" do
    get :show, id: @user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user.to_param
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user.to_param, user: @input_attributes
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user.to_param
    end

    assert_redirected_to users_path
  end

  test "should add garment to wear" do
    assert_difference('@controller.current_user.wears.count', 1) do
      put :create_wears, :id => @user.to_param, :garment_id => [garments(:one)['id']], :date => '02/28/1987'
    end
  end

  test "should add jewelry to wear" do
    assert_difference('@controller.current_user.wears.count', 1) do
      put :create_wears, :id => @user.to_param, :jewelry_id => [jewelries(:one)['id']], :date => '02/28/1987'
    end
  end

  test "should be able to wear many types of things at once" do
     assert_difference('@controller.current_user.wears.count', 2) do
      put :create_wears, :id => @user.to_param,:garment_id =>[garments(:one)['id']], :jewelry_id => [jewelries(:one)['id']], :date => '02/28/1987'
    end
  

  end
end
