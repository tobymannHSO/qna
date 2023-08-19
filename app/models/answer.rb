class Answer < ApplicationRecord
  include StatusAttribute

  belongs_to :user
  belongs_to :question
  validates :body, :question, :user, presence: true
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
#  user_id     :bigint
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#  index_answers_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
