ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

# By default, rspec/rails tags all specs in spec/integration as request specs,
# which is not what we want. There does not appear to be a way to disable this
# behaviour, so below is a copy of rspec/rails.rb with this default behaviour
# commented out.
require 'rspec/core'

RSpec::configure do |c|
  c.backtrace_clean_patterns << /vendor\//
  c.backtrace_clean_patterns << /lib\/rspec\/rails/
end


require 'rspec/rails/extensions'
require 'rspec/rails/view_rendering'
require 'rspec/rails/adapters'
require 'rspec/rails/matchers'
require 'rspec/rails/fixture_support'
require 'rspec/rails/mocks'
require 'rspec/rails/module_inclusion'
# require 'rspec/rails/example' # Commented this out

# Added the below, we still want access to some of the example groups
require 'rspec/rails/example/rails_example_group'
require 'rspec/rails/example/controller_example_group'
require 'rspec/rails/example/helper_example_group'
