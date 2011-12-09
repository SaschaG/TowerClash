require 'test_helper'

class TowersControllerTest < ActionController::TestCase
  setup do
    @tower = towers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:towers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tower" do
    assert_difference('Tower.count') do
      post :create, :tower => @tower.attributes
    end

    assert_redirected_to tower_path(assigns(:tower))
  end

  test "should show tower" do
    get :show, :id => @tower.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tower.to_param
    assert_response :success
  end

  test "should update tower" do
    put :update, :id => @tower.to_param, :tower => @tower.attributes
    assert_redirected_to tower_path(assigns(:tower))
  end

  test "should destroy tower" do
    assert_difference('Tower.count', -1) do
      delete :destroy, :id => @tower.to_param
    end

    assert_redirected_to towers_path
  end
end
