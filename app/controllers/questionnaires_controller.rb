class QuestionnairesController < ApplicationController
  before_action :set_user
  def new
    @questionnaire = Questionnaire.new
  end

  def create
    @questionnaire = @user.build_questionnaire(questionnaire_params)

    if @questionnaire.save
      redirect_to root_path, notice: 'Questionnaire was successfully submitted.'
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def questionnaire_params
    params.require(:questionnaire).permit(:industry, :role, :company_size, :work_location, :salary_range)
  end
end
