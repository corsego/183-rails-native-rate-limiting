require "test_helper"

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_index_url
    assert_response :success
  end

  test "should get dashboard" do
    get static_dashboard_url
    assert_response :success
  end
end
