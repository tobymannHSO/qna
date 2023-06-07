require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qn = questions(:one)
    @url = "/questions/#{@qn.id}/answers"
  end

  test 'create route works' do
    assert_difference('Answer.count') do
      params = { answer: { body: 'body' } }
      post @url, params:
    end
  end
end
