require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "index has success response" do
    get questions_url
    assert_response :success
  end

  test "show has a success response" do
    question = questions(:one)
    get question_url(question)
    assert_response :success
  end
end
