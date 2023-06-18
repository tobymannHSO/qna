require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  test 'test presence of validations' do
    assert answer_missing('body').invalid?
    assert answer_missing('status').invalid?
    assert answer_missing('question_id').invalid?

    assert answers(:one).valid?
  end

  def answer_missing(attr)
    valid_answer = answers(:one)
    model_missing_attr(Answer, valid_answer, attr)
  end
end
