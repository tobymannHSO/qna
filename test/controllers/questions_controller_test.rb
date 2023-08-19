require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  attr_accessor :question

  setup do
    @question = questions(:one)

    sign_in_as(users(:lnixon))
  end

  test 'index has success response' do
    get questions_url
    assert_response :success
  end

  test 'show has a success response' do
    get question_url(question)
    assert_response :success
  end

  test 'create is successful' do
    assert_difference('Question.count') do
      params = {
        question: {
          body: 'body', header: 'header', status: 'public'
        }
      }

      post questions_url, params:, as: :json
    end
  end

  test 'update is successful' do
    params = {
      question: {
        body: 'body', header: 'header', status: 'public'
      }
    }

    put question_url(question), params:, as: :json
    assert_redirected_to question_url(question)
  end

  test 'delete is successful' do
    assert_difference('Question.count', -1) do
      delete question_url(question)
    end
  end
end
