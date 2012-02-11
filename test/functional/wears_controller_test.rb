require 'test_helper'

class WearsControllerTest < ActionController::TestCase
  setup do
    @wear = wears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wear" do
    assert_difference('Wear.count') do
      post :create, wear: @wear.attributes
    end

    assert_redirected_to wear_path(assigns(:wear))
  end

  test "should show wear" do
    get :show, id: @wear.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wear.to_param
    assert_response :success
  end

  test "should update wear" do
    put :update, id: @wear.to_param, wear: @wear.attributes
    assert_redirected_to wear_path(assigns(:wear))
  end

  test "should destroy wear" do
    assert_difference('Wear.count', -1) do
      delete :destroy, id: @wear.to_param
    end

    assert_redirected_to wears_path
  end
end
