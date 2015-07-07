require 'rails_helper'

feature "Login page" do
  context "User does not exits" do
    before do
      visit root_path
    end
    scenario "user has not been register yet" do
      user = build(:user)
    end
    scenario "user type wrongly the password" do
      user = create(:user, password_digest: "wrong_password")
    end
    after do
      within("#user_form") do
        fill_in "email", with: "value"
        fill_in "password", with: "value"
        click_button "Submit"
      end
    end
  end

  context 'user succesfully login' do
    scenario "user enter credentials and is redirect to privite page" do
      pending
    end
  end
end