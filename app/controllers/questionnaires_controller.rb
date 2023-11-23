class QuestionnairesController < ApplicationController
  def new
    @questionnaire = Questionnaire.new
    setup_questions
  end

  def create
  end

  private
  def setup_questions
    @questions = [
      { text: "What is your highest level of education?", options: ["High School", "Bachelor's", "Master's", "PhD"] },
      { text: "What type of job are you looking for?", options: ["Full-time", "Part-time", "Internship", "Freelance"] },
      # Add more questions as needed
    ]
  end
end
