require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get user_name_url
    assert_response :success
  end

  test "should get email" do
    get user_email_url
    assert_response :success
  end

  test "should get image" do
    get user_image_url
    assert_response :success
  end

end
