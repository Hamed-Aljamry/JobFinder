class QuestionnairesController < ApplicationController
  before_action :set_user
  def new
    @questionnaire = Questionnaire.new
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.user = @user

    if @questionnaire.save
      redirect_to root_path, notice: 'Go to job suggestions to see what we have found for you!'
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


# NEXT STEP IS TO HAVE A USER GO TO THIS PAGE FROM HOME PAGE
# AFTER THEY FILL OUT THE QUESTIONAIRRE, THEY WILL BE REDIRECTED TO THE HOME PAGE
# IT WILL GIVE THEM A NOTICE "PLEASE CHECK JOB_SUGGESTIONS TO SEE WHAT WE HAVE FOUND"
