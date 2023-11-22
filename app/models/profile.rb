class Profile < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :education_level, presence: true
  validates :job_preference, presence: true
end
