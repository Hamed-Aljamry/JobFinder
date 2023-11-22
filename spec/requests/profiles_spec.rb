require 'rails_helper'

RSpec.describe "Profiles", type: :request do
  let(:user) { create(:user) } # Assuming you have a user factory

  before do
    sign_in user
  end

  describe "GET /new" do
    context "when user does not have a profile" do
      it "renders the new template" do
        get new_profile_path
        expect(response).to render_template(:new)
      end
    end

    context "when user already has a profile" do
      it "redirects to the edit profile path" do
        create(:profile, user: user) # Assuming you have a profile factory
        get new_profile_path
        expect(response).to redirect_to(edit_profile_path(user.profile))
      end
    end
  end

    # Continuing in spec/requests/profiles_spec.rb

  describe "GET /edit" do
    it "renders the edit template" do
      create(:profile, user: user)
      get edit_profile_path(user.profile)
      expect(response).to render_template(:edit)
    end
  end

  describe "PATCH /update" do
    it "updates the profile and redirects" do
      profile = create(:profile, user: user)
      patch profile_path(profile), params: { profile: { field1: "New Value" } }
      expect(response).to redirect_to(some_path)
      profile.reload
      expect(profile.field1).to eq("New Value")
    end
  end

end
