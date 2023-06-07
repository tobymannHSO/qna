require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  test "Can be saved" do
    assert Question.create
  end

  test "validates presence of header" do
    qn = Question.new
    assert qn.invalid?

    qn.header = "header"
    assert qn.valid?
  end

  test "has_many answers" do
    qn = questions(:one)
    assert qn.answers
  end

  test "answers are destroyed with question" do
    qn = questions(:one)
    assert_difference('Answer.count', -1) { qn.destroy }
  end
end
