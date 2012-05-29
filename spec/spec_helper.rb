require "pry"
require "rspec"
require File.join(File.dirname(__FILE__), "..", "lib", "mock_proc")

RSpec.configure do |config|
  config.before "rspec-mocks" => true do
    config.mock_with :rspec
  end

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end
