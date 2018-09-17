require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get recordimage1" do
    get records_recordimage_url
    assert_response :success
  end

end
