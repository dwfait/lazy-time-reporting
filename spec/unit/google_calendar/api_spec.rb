require 'unit/unit_helper'
require_relative '../../../lib/google_calendar.rb'

describe GoogleCalendar::API do
  describe "#configure" do
    subject { GoogleCalendar::API.configure }
    it { should eq true }
  end
end
