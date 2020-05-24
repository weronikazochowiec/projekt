require 'test_helper'

class UserBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_blog = user_blogs(:one)
  end

  test "should get index" do
    get user_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_blog_url
    assert_response :success
  end

  test "should create user_blog" do
    assert_difference('UserBlog.count') do
      post user_blogs_url, params: { user_blog: { name: @user_blog.name, user_id: @user_blog.user_id } }
    end

    assert_redirected_to user_blog_url(UserBlog.last)
  end

  test "should show user_blog" do
    get user_blog_url(@user_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_blog_url(@user_blog)
    assert_response :success
  end

  test "should update user_blog" do
    patch user_blog_url(@user_blog), params: { user_blog: { name: @user_blog.name, user_id: @user_blog.user_id } }
    assert_redirected_to user_blog_url(@user_blog)
  end

  test "should destroy user_blog" do
    assert_difference('UserBlog.count', -1) do
      delete user_blog_url(@user_blog)
    end

    assert_redirected_to user_blogs_url
  end
end
