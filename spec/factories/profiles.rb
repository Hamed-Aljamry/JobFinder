FactoryBot.define do
  factory :profile do
    user
    # define profile attributes
    job_preference { "Software Developer" }
    additional_info { "Student" }
    education_level { "Masters degree" }
  end
end
