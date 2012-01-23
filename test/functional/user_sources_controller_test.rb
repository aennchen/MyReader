require 'test_helper'

class UserSourcesControllerTest < ActionController::TestCase
  setup do
    @user_source = user_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_source" do
    assert_difference('UserSource.count') do
      post :create, user_source: @user_source.attributes
    end

    assert_redirected_to user_source_path(assigns(:user_source))
  end

  test "should show user_source" do
    get :show, id: @user_source.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_source.to_param
    assert_response :success
  end

  test "should update user_source" do
    put :update, id: @user_source.to_param, user_source: @user_source.attributes
    assert_redirected_to user_source_path(assigns(:user_source))
  end

  test "should destroy user_source" do
    assert_difference('UserSource.count', -1) do
      delete :destroy, id: @user_source.to_param
    end

    assert_redirected_to user_sources_path
  end
end
