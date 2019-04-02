require 'test_helper'

class GoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get goaldecision" do
    get goals_goaldecision_url
    assert_response :success
  end

end
