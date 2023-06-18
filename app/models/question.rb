class Question < ApplicationRecord
  VALID_STATUSES = %w[public private archived].freeze

  has_many :answers, dependent: :destroy

  validates :header, presence: true
  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
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
#
