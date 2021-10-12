require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get history" do
    get pages_history_url
    assert_response :success
  end

end
