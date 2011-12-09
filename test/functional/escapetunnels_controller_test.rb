require 'test_helper'

class EscapetunnelsControllerTest < ActionController::TestCase
  setup do
    @escapetunnel = escapetunnels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:escapetunnels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create escapetunnel" do
    assert_difference('Escapetunnel.count') do
      post :create, :escapetunnel => @escapetunnel.attributes
    end

    assert_redirected_to escapetunnel_path(assigns(:escapetunnel))
  end

  test "should show escapetunnel" do
    get :show, :id => @escapetunnel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @escapetunnel.to_param
    assert_response :success
  end

  test "should update escapetunnel" do
    put :update, :id => @escapetunnel.to_param, :escapetunnel => @escapetunnel.attributes
    assert_redirected_to escapetunnel_path(assigns(:escapetunnel))
  end

  test "should destroy escapetunnel" do
    assert_difference('Escapetunnel.count', -1) do
      delete :destroy, :id => @escapetunnel.to_param
    end

    assert_redirected_to escapetunnels_path
  end
end
