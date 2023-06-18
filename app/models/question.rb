class Question < ApplicationRecord
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
#
