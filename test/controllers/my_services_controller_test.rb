require "test_helper"

class MyServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_services_index_url
    assert_response :success
  end
end
