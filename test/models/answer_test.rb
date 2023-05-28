require "test_helper"

class AnswerTest < ActiveSupport::TestCase
  test "Answer can be created" do
    qn = questions(:one)

    an = Answer.new
    assert an.invalid?

    an.question = qn
    an.body = "Canberra"

    assert an.valid?
  end
end
