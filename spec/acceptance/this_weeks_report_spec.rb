require 'acceptance/acceptance_helper'

feature "This Weeks Time Report", %q{
  As a google calendar user
  I want to see this weeks recorded time
  So that I know how much time is left to record
} do

  background do
    visit '/'
  end

  scenario "Attach calendar" do
    click_on 'Authorize with Google Account'
    page.should have_content %q{Company Profile: Tue, 15 January}
  end
end
