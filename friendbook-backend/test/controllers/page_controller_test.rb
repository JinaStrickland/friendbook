require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get username" do
    get page_username_url
    assert_response :success
  end

end
