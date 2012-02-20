require 'test_helper'

class FabricsControllerTest < ActionController::TestCase
  setup do
    @fabric = fabrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fabrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fabric" do
    assert_difference('Fabric.count') do
      post :create, fabric: @fabric.attributes
    end

    assert_redirected_to fabric_path(assigns(:fabric))
  end

  test "should show fabric" do
    get :show, id: @fabric.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fabric.to_param
    assert_response :success
  end

  test "should update fabric" do
    put :update, id: @fabric.to_param, fabric: @fabric.attributes
    assert_redirected_to fabric_path(assigns(:fabric))
  end

  test "should destroy fabric" do
    assert_difference('Fabric.count', -1) do
      delete :destroy, id: @fabric.to_param
    end

    assert_redirected_to fabrics_path
  end
end
