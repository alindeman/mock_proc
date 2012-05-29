require "delegate"

class MockProc < SimpleDelegator
  def initialize
    super(proc { |*a, &b| __call__(*a, &b) })
  end

  def __call__(*a)
    "not stubbed; are you sure you set an expectation?"
  end
end

require "mock_proc/version"
require "mock_proc/rspec"
