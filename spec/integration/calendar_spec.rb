require 'integration/integration_helper.rb'
require_relative '../../lib/google_calendar.rb'

describe "Calendar" do
  before(:each) { GoogleCalendar::API.configure }

  describe "#recorded_time_this_week" do
    subject { Calendar.recorded_time_this_week }

    context "No time recorded" do
      it { should eq 0 }
    end
  end
end
