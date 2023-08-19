class PasswordResetToken < ApplicationRecord
  belongs_to :user
end

# == Schema Information
#
# Table name: password_reset_tokens
#
#  id      :bigint           not null, primary key
#  user_id :bigint           not null
#
# Indexes
#
#  index_password_reset_tokens_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
