class Job < ApplicationRecord
  validates :title, presence: true
  validates :company, presence: true
  validates :description, presence: true
end
