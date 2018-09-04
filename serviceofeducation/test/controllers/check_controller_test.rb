require 'test_helper'

class CheckControllerTest < ActionDispatch::IntegrationTest
  test "should get checklist" do
    get check_checklist_url
    assert_response :success
  end

end
