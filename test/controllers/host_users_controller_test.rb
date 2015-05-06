require 'test_helper'

class HostUsersControllerTest < ActionController::TestCase
  setup do
    @host_user = host_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:host_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host_user" do
    assert_difference('HostUser.count') do
      post :create, host_user: { email: @host_user.email, name: @host_user.name, password_digest: @host_user.password_digest }
    end

    assert_redirected_to host_user_path(assigns(:host_user))
  end

  test "should show host_user" do
    get :show, id: @host_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host_user
    assert_response :success
  end

  test "should update host_user" do
    patch :update, id: @host_user, host_user: { email: @host_user.email, name: @host_user.name, password_digest: @host_user.password_digest }
    assert_redirected_to host_user_path(assigns(:host_user))
  end

  test "should destroy host_user" do
    assert_difference('HostUser.count', -1) do
      delete :destroy, id: @host_user
    end

    assert_redirected_to host_users_path
  end
end
