require "test_helper"

class EmploymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get employments_new_url
    assert_response :success
  end

  test "should get create" do
    get employments_create_url
    assert_response :success
  end
end
