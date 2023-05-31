class Question < ApplicationRecord
  has_many :answers

  validates :header, presence: true
end

# == Schema Information
#
# Table name: questions
#
#  id         :uuid             not null, primary key
#  body       :text
#  header     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
