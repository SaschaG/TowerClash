require 'test_helper'

class TrapsControllerTest < ActionController::TestCase
  setup do
    @trap = traps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trap" do
    assert_difference('Trap.count') do
      post :create, :trap => @trap.attributes
    end

    assert_redirected_to trap_path(assigns(:trap))
  end

  test "should show trap" do
    get :show, :id => @trap.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trap.to_param
    assert_response :success
  end

  test "should update trap" do
    put :update, :id => @trap.to_param, :trap => @trap.attributes
    assert_redirected_to trap_path(assigns(:trap))
  end

  test "should destroy trap" do
    assert_difference('Trap.count', -1) do
      delete :destroy, :id => @trap.to_param
    end

    assert_redirected_to traps_path
  end
end
