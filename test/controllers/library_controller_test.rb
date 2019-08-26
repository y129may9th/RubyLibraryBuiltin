require 'test_helper'

class LibraryControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get library_top_url
    assert_response :success
  end

end
