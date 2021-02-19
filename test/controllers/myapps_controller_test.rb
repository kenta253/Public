require "test_helper"

class MyappsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myapps_index_url
    assert_response :success
  end
end
