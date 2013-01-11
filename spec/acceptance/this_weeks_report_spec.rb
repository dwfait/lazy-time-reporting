require 'acceptance/acceptance_helper'

feature "This Weeks Time Report", %q{
  As a google calendar user
  I want to see this weeks recorded time
  So that I know how much time is left to record
} do

  scenario "reviewing total hours recorded this week" do
    visit '/'

    page.should have_content 'Hours This Week'
  end

end
