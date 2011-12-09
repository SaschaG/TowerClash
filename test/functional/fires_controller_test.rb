require 'test_helper'

class FiresControllerTest < ActionController::TestCase
  setup do
    @fire = fires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fire" do
    assert_difference('Fire.count') do
      post :create, :fire => @fire.attributes
    end

    assert_redirected_to fire_path(assigns(:fire))
  end

  test "should show fire" do
    get :show, :id => @fire.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fire.to_param
    assert_response :success
  end

  test "should update fire" do
    put :update, :id => @fire.to_param, :fire => @fire.attributes
    assert_redirected_to fire_path(assigns(:fire))
  end

  test "should destroy fire" do
    assert_difference('Fire.count', -1) do
      delete :destroy, :id => @fire.to_param
    end

    assert_redirected_to fires_path
  end
end
