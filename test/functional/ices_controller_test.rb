require 'test_helper'

class IcesControllerTest < ActionController::TestCase
  setup do
    @ice = ices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ice" do
    assert_difference('Ice.count') do
      post :create, :ice => @ice.attributes
    end

    assert_redirected_to ice_path(assigns(:ice))
  end

  test "should show ice" do
    get :show, :id => @ice.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ice.to_param
    assert_response :success
  end

  test "should update ice" do
    put :update, :id => @ice.to_param, :ice => @ice.attributes
    assert_redirected_to ice_path(assigns(:ice))
  end

  test "should destroy ice" do
    assert_difference('Ice.count', -1) do
      delete :destroy, :id => @ice.to_param
    end

    assert_redirected_to ices_path
  end
end
