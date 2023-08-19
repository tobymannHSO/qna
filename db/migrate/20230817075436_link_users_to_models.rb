class LinkUsersToModels < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :user
    add_reference :answers, :user
  end
end
