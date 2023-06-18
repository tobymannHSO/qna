class Answer < ApplicationRecord
  VALID_STATUSES = %w[public private archived].freeze

  belongs_to :question

  validates :body, :question, presence: true
  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end

# == Schema Information
#
# Table name: answers
#
#  id          :uuid             not null, primary key
#  body        :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :uuid             not null
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
