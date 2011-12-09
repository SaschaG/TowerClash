require 'test_helper'

class EarthsControllerTest < ActionController::TestCase
  setup do
    @earth = earths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:earths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create earth" do
    assert_difference('Earth.count') do
      post :create, :earth => @earth.attributes
    end

    assert_redirected_to earth_path(assigns(:earth))
  end

  test "should show earth" do
    get :show, :id => @earth.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @earth.to_param
    assert_response :success
  end

  test "should update earth" do
    put :update, :id => @earth.to_param, :earth => @earth.attributes
    assert_redirected_to earth_path(assigns(:earth))
  end

  test "should destroy earth" do
    assert_difference('Earth.count', -1) do
      delete :destroy, :id => @earth.to_param
    end

    assert_redirected_to earths_path
  end
end
