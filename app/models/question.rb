class Question < ApplicationRecord
  include StatusAttribute

  belongs_to :user
  has_many :answers, dependent: :destroy
  validates :header, presence: true
end

# == Schema Information
#
# Table name: questions
#
#  id         :uuid             not null, primary key
#  body       :text
#  header     :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_questions_on_user_id  (user_id)
#
