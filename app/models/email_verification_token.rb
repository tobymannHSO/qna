class EmailVerificationToken < ApplicationRecord
  belongs_to :user
end

# == Schema Information
#
# Table name: email_verification_tokens
#
#  id      :bigint           not null, primary key
#  user_id :bigint           not null
#
# Indexes
#
#  index_email_verification_tokens_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
