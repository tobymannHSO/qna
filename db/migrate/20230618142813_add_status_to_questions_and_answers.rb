class AddStatusToQuestionsAndAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :status, :string
    add_column :answers, :status, :string
  end
end
