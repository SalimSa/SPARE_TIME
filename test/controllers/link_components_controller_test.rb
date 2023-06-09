require "test_helper"

class LinkComponentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get link_components_create_url
    assert_response :success
  end
end
