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
end
