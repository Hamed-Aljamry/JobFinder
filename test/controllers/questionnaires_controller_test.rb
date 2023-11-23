require "test_helper"

class QuestionnairesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get questionnaires_new_url
    assert_response :success
  end

  test "should get create" do
    get questionnaires_create_url
    assert_response :success
  end
end
