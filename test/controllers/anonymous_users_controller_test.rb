require 'test_helper'

class AnonymousUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anonymous_user = anonymous_users(:one)
  end

  test "should get index" do
    get anonymous_users_url
    assert_response :success
  end

  test "should get new" do
    get new_anonymous_user_url
    assert_response :success
  end

  test "should create anonymous_user" do
    assert_difference('AnonymousUser.count') do
      post anonymous_users_url, params: { anonymous_user: { email: @anonymous_user.email, name: @anonymous_user.name, phone: @anonymous_user.phone, school_id: @anonymous_user.school_id } }
    end

    assert_redirected_to anonymous_user_url(AnonymousUser.last)
  end

  test "should show anonymous_user" do
    get anonymous_user_url(@anonymous_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_anonymous_user_url(@anonymous_user)
    assert_response :success
  end

  test "should update anonymous_user" do
    patch anonymous_user_url(@anonymous_user), params: { anonymous_user: { email: @anonymous_user.email, name: @anonymous_user.name, phone: @anonymous_user.phone, school_id: @anonymous_user.school_id } }
    assert_redirected_to anonymous_user_url(@anonymous_user)
  end

  test "should destroy anonymous_user" do
    assert_difference('AnonymousUser.count', -1) do
      delete anonymous_user_url(@anonymous_user)
    end

    assert_redirected_to anonymous_users_url
  end
end
