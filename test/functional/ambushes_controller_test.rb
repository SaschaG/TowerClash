require 'test_helper'

class AmbushesControllerTest < ActionController::TestCase
  setup do
    @ambush = ambushes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambushes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambush" do
    assert_difference('Ambush.count') do
      post :create, :ambush => @ambush.attributes
    end

    assert_redirected_to ambush_path(assigns(:ambush))
  end

  test "should show ambush" do
    get :show, :id => @ambush.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ambush.to_param
    assert_response :success
  end

  test "should update ambush" do
    put :update, :id => @ambush.to_param, :ambush => @ambush.attributes
    assert_redirected_to ambush_path(assigns(:ambush))
  end

  test "should destroy ambush" do
    assert_difference('Ambush.count', -1) do
      delete :destroy, :id => @ambush.to_param
    end

    assert_redirected_to ambushes_path
  end
end
