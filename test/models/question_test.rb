require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  test 'test presence of validations' do
    assert question_missing('header').invalid?
    assert question_missing('status').invalid?

    assert answers(:one).valid?
  end

  test 'has_many answers' do
    qn = questions(:one)
    assert qn.answers
  end

  test 'answers are destroyed with question' do
    qn = questions(:one)
    assert_difference('Answer.count', -1) { qn.destroy }
  end

  def question_missing(attr)
    valid_question = questions(:one)
    model_missing_attr(Question, valid_question, attr)
  end
end
