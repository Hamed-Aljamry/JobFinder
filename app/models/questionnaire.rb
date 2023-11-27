class Questionnaire < ApplicationRecord
  belongs_to :user
  validates :industry, :role, :company_size, :work_location, :salary_range, presence: true
end
