require 'test_helper'

class PoolAccessesControllerTest < ActionController::TestCase
  setup do
    @pool_access = pool_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pool_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pool_access" do
    assert_difference('PoolAccess.count') do
      post :create, pool_access: { emergency: @pool_access.emergency, is_opening: @pool_access.is_opening, pool_id: @pool_access.pool_id, timestamp: @pool_access.timestamp, user_id: @pool_access.user_id }
    end

    assert_redirected_to pool_access_path(assigns(:pool_access))
  end

  test "should show pool_access" do
    get :show, id: @pool_access
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pool_access
    assert_response :success
  end

  test "should update pool_access" do
    patch :update, id: @pool_access, pool_access: { emergency: @pool_access.emergency, is_opening: @pool_access.is_opening, pool_id: @pool_access.pool_id, timestamp: @pool_access.timestamp, user_id: @pool_access.user_id }
    assert_redirected_to pool_access_path(assigns(:pool_access))
  end

  test "should destroy pool_access" do
    assert_difference('PoolAccess.count', -1) do
      delete :destroy, id: @pool_access
    end

    assert_redirected_to pool_accesses_path
  end
end
