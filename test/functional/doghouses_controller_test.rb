require 'test_helper'

class DoghousesControllerTest < ActionController::TestCase
  setup do
    @doghouse = doghouses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doghouses)
  end

  test "should create doghouse" do
    assert_difference('Doghouse.count') do
      post :create, doghouse: @doghouse.attributes
    end

    assert_redirected_to doghouse_path(assigns(:doghouse))
  end

  test "should update doghouse" do
    put :update, id: @doghouse, doghouse: @doghouse.attributes
    assert_redirected_to doghouse_path(assigns(:doghouse))
  end

  test "should destroy doghouse" do
    assert_difference('Doghouse.count', -1) do
      delete :destroy, id: @doghouse
    end

    assert_redirected_to doghouses_path
  end
  
  test "should release doghouse" do
    put :release, id: @doghouse, doghouse: @doghouse.attributes
    assert_redirected_to doghouse_path(assigns(:doghouse))
  end
end
