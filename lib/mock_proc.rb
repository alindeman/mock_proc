require "delegate"

class MockProc < SimpleDelegator
  def initialize
    super(proc { |*a| __call__(*a) })
  end

  def __call__(*)
    "not stubbed; are you sure you set an expectation?"
  end
end

require "mock_proc/version"
require "mock_proc/rspec"
