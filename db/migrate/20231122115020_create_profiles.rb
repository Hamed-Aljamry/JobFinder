class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :education_level
      t.string :job_preference
      t.text :additional_info

      t.timestamps
    end
  end
end
