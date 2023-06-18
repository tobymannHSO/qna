require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qn = questions(:one)
    @url = "/questions/#{@qn.id}/answers"
  end

  test 'create is successful' do
    assert_difference('Answer.count') do
      params = { answer: { body: 'body' } }
      post @url, params:
    end
  end

  test 'delete is successful' do
    assert_difference('Answer.count', -1) do
      answer = answers(:one)
      params = { id: answer.id }
      delete @url, params:
    end
  end
end
