require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  test "Can be saved" do
    assert Question.create
  end
end
