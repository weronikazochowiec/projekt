require "application_system_test_case"

class UserBlogsTest < ApplicationSystemTestCase
  setup do
    @user_blog = user_blogs(:one)
  end

  test "visiting the index" do
    visit user_blogs_url
    assert_selector "h1", text: "User Blogs"
  end

  test "creating a User blog" do
    visit user_blogs_url
    click_on "New User Blog"

    fill_in "Name", with: @user_blog.name
    fill_in "User", with: @user_blog.user_id
    click_on "Create User blog"

    assert_text "User blog was successfully created"
    click_on "Back"
  end

  test "updating a User blog" do
    visit user_blogs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @user_blog.name
    fill_in "User", with: @user_blog.user_id
    click_on "Update User blog"

    assert_text "User blog was successfully updated"
    click_on "Back"
  end

  test "destroying a User blog" do
    visit user_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User blog was successfully destroyed"
  end
end
