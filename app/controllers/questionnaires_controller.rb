class QuestionnairesController < ApplicationController
  before_action :set_user
  def new
    @questionnaire = Questionnaire.new
    salary_range
    industry
    role
    company_size
    work_location
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

  def salary_range
    @salary_range = ["$0 - $50,000", "$50,000 - $100,000", "$100,000 - $150,000", "$150,000 - $200,000", "$200,000+"]
  end

  def industry
    @industry = ["Accounting", "Airlines/Aviation", "Alternative Dispute Resolution", "Alternative Medicine", "Animation", "Apparel & Fashion", "Architecture & Planning", "Arts & Crafts", "Automotive", "Aviation & Aerospace", "Banking", "Biotechnology", "Broadcast Media", "Building Materials", "Business Supplies & Equipment", "Capital Markets", "Chemicals", "Civic & Social Organization", "Civil Engineering", "Commercial Real Estate", "Computer & Network Security", "Computer Games", "Computer Hardware", "Computer Networking", "Computer Software", "Construction", "Consumer Electronics", "Consumer Goods", "Consumer Services", "Cosmetics", "Dairy", "Defense & Space", "Design", "Education Management", "E-learning", "Electrical & Electronic Manufacturing", "Entertainment", "Environmental Services", "Events Services", "Executive Office", "Facilities Services", "Farming", "Financial Services", "Fine Art", "Fishery", "Food & Beverages", "Food Production", "Fundraising", "Furniture"]
  end

  def role
    @role = ["Accountant", "Actuary", "Administrative Assistant", "Advertising Manager", "Analyst", "Architect", "Auditor", "Bank Teller", "Bookkeeper", "Brand Manager", "Budget Analyst", "Business Analyst", "Business Manager", "Cashier", "Chief Executive Officer", "Chief Financial Officer", "Chief Information Officer", "Chief Operating Officer", "Chief Technology Officer", "Civil Engineer", "Consultant", "Controller", "Copywriter", "Customer Service Representative", "Data Analyst", "Data Scientist", "Database Administrator", "Dental Hygienist", "Dentist", "Design Engineer", "Designer", "Developer", "Digital Marketing Manager", "Director", "Editor", "Electrical Engineer", "Engineer", "Engineering Manager", "Executive Assistant", "Financial Advisor", "Financial Analyst", "Financial Manager", "Graphic Designer", "Human Resources Manager", "Information Security Analyst", "Information Technology Manager", "Investment Banker", "IT Director", "IT Manager", "Journalist", "Lawyer", "Legal Assistant", "Librarian", "Loan Officer", "Management Consultant", "Marketing Manager", "Mechanical Engineer", "Medical Assistant", "Medical Technologist", "Nurse", "Occupational Therapist", "Operations Manager", "Paralegal", "Pharmacist", "Physical Therapist", "Physician", "Physician Assistant", "Product Manager", "Program Manager", "Project Manager", "Psychologist", "Public Relations Manager", "Quality Assurance Engineer", "Recruiter", "Registered Nurse", "Research Assistant", "Sales Manager", "Sales Representative", "Software Developer", "Software Engineer", "Speech-Language Pathologist", "Statistician", "Surgeon", "Systems Administrator", "Teacher", "Technical Writer", "Technician", "Therapist", "UX Designer", "Veterinarian", "Web Developer", "Writer"]
  end

  def company_size
    @company_size = ["1-10", "11-50", "51-200", "201-500", "501-1000", "1001-5000", "5001-10,000", "10,001+"]
  end

  def work_location
    @work_location = ["Remote", "On-site", "Hybrid"]
  end
end


# NEXT STEP IS TO HAVE A USER GO TO THIS PAGE FROM HOME PAGE
# AFTER THEY FILL OUT THE QUESTIONAIRRE, THEY WILL BE REDIRECTED TO THE HOME PAGE
# IT WILL GIVE THEM A NOTICE "PLEASE CHECK JOB_SUGGESTIONS TO SEE WHAT WE HAVE FOUND"
