class DashboardController < ApplicationController
  def show
    @recorded_time = Calendar.recorded_time_this_week
  end
end
