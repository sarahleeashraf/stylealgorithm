require 'test_helper'

class JewelriesControllerTest < ActionController::TestCase
  setup do
    @jewelry = jewelries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jewelries)
  end

  test "should not get new without subtype" do
    get :new
    assert_redirected_to root_path 
  end

  test "should create jewelry" do
    assert_difference('Jewelry.count') do
      post :create, jewelry: @jewelry.attributes
    end

    assert_redirected_to jewelry_path(assigns(:jewelry))
  end

  test "should show jewelry" do
    get :show, id: @jewelry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jewelry.to_param
    assert_response :success
  end

  test "should update jewelry" do
    put :update, id: @jewelry.to_param, jewelry: @jewelry.attributes
    assert_redirected_to jewelry_path(assigns(:jewelry))
  end

  test "should destroy jewelry" do
    assert_difference('Jewelry.count', -1) do
      delete :destroy, id: @jewelry.to_param
    end

    assert_redirected_to jewelries_path
  end

  test "should be able to create bracelets" do
    put :new, jewelry: { :type => 'Bracelet'}

    assert_response :success
  end

  test "should be able to create rings" do
    put :new, jewelry: { :type => 'Ring'}
  end

  test "should be able to create earrings" do
    put :new, jewelry: { :type => 'Earrings'}
  end

  test "should be able to test necklaces" do
    put :new, jewelry: { :type => 'Necklace' }
  end 


end
