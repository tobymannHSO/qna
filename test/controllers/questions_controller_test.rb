require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test 'index has success response' do
    get questions_url
    assert_response :success
  end

  test 'show has a success response' do
    question = questions(:one)
    get question_url(question)
    assert_response :success
  end

  test 'create is successful' do
    assert_difference('Question.count') do
      params = { question: { body: 'body', header: 'header' } }
      post questions_url, params:, as: :json
    end
  end

  test 'delete is successful' do
    assert_difference('Question.count', -1) do
      question = questions(:one)
      delete question_url(question)
    end
  end
end
