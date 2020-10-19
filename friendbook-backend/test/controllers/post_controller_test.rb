require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get post_post_url
    assert_response :success
  end

  test "should get likes:integer" do
    get post_likes:integer_url
    assert_response :success
  end

  test "should get user" do
    get post_user_url
    assert_response :success
  end

end
