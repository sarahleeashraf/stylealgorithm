require 'test_helper'

class UserGarmentsControllerTest < ActionController::TestCase
  setup do
    @user_garment = user_garments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_garments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_garment" do
    assert_difference('UserGarment.count') do
      post :create, user_garment: @user_garment.attributes
    end

    assert_redirected_to user_garment_path(assigns(:user_garment))
  end

  test "should show user_garment" do
    get :show, id: @user_garment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_garment.to_param
    assert_response :success
  end

  test "should update user_garment" do
    put :update, id: @user_garment.to_param, user_garment: @user_garment.attributes
    assert_redirected_to user_garment_path(assigns(:user_garment))
  end

  test "should destroy user_garment" do
    assert_difference('UserGarment.count', -1) do
      delete :destroy, id: @user_garment.to_param
    end

    assert_redirected_to user_garments_path
  end
end
