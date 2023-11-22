class Application < ApplicationRecord
  belongs_to :user
  belongs_to :job
  validates :user_id, presence: true
  validates :job_id, presence: true
  validates :status, presence: true
  validates :status, inclusion: { in: %w[pending accepted rejected] }
end
