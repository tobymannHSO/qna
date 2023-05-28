class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers, id: :uuid do |t|
      t.text :body
      t.references :question, null: false, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
