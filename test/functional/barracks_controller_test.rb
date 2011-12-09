require 'test_helper'

class BarracksControllerTest < ActionController::TestCase
  setup do
    @barrack = barracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barrack" do
    assert_difference('Barrack.count') do
      post :create, :barrack => @barrack.attributes
    end

    assert_redirected_to barrack_path(assigns(:barrack))
  end

  test "should show barrack" do
    get :show, :id => @barrack.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @barrack.to_param
    assert_response :success
  end

  test "should update barrack" do
    put :update, :id => @barrack.to_param, :barrack => @barrack.attributes
    assert_redirected_to barrack_path(assigns(:barrack))
  end

  test "should destroy barrack" do
    assert_difference('Barrack.count', -1) do
      delete :destroy, :id => @barrack.to_param
    end

    assert_redirected_to barracks_path
  end
end
