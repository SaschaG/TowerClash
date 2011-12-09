require 'test_helper'

class AirsControllerTest < ActionController::TestCase
  setup do
    @air = airs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create air" do
    assert_difference('Air.count') do
      post :create, :air => @air.attributes
    end

    assert_redirected_to air_path(assigns(:air))
  end

  test "should show air" do
    get :show, :id => @air.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @air.to_param
    assert_response :success
  end

  test "should update air" do
    put :update, :id => @air.to_param, :air => @air.attributes
    assert_redirected_to air_path(assigns(:air))
  end

  test "should destroy air" do
    assert_difference('Air.count', -1) do
      delete :destroy, :id => @air.to_param
    end

    assert_redirected_to airs_path
  end
end
