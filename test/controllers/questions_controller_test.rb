require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "index has success response" do
    get questions_url
    assert_response :success
  end
end
