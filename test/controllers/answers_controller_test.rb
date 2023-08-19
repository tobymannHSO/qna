require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  attr_accessor :question, :user, :url

  setup do
    @question = questions(:one)
    @user = users(:lnixon)
    @url = "/questions/#{question.id}/answers"

    sign_in_as(users(:lnixon))
  end

  test 'create is successful' do
    assert_difference('Answer.count') do
      post @url, params: {
        answer: {
          body: 'body',
          status: 'public'
        }
      }
    end
  end

  test 'delete is successful' do
    assert_difference('Answer.count', -1) do
      answer = answers(:one)
      delete "#{url}/#{answer.id}"
    end
  end
end
