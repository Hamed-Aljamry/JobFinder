class AddFieldsToQuestionnaire < ActiveRecord::Migration[7.0]
  def change
    add_column :questionnaires, :industry, :string
    add_column :questionnaires, :role, :string
    add_column :questionnaires, :company_size, :string
    add_column :questionnaires, :work_location, :string
    add_column :questionnaires, :salary_range, :string
  end
end
