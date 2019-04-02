require 'test_helper'

class ExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get goalimage" do
    get example_goalimage_url
    assert_response :success
  end

end
