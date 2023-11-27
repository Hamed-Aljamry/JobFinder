class AddAnswersToQuestionnaire < ActiveRecord::Migration[7.0]
  def change
    add_column :questionnaires, :answers, :text
  end
end
