require "spec_helper"

describe MockProc do
  def call_block_with_yield
    yield
  end

  describe "rspec-mocks", "rspec-mocks" => true do
    it "expects an exact number of calls" do
      block = MockProc.new
      block.should_be_called.twice

      2.times { block.call }
    end

    it "allows all methods that invoke a block" do
      block = MockProc.new
      block.should_be_called.exactly(2).times

      block[:foo]
      call_block_with_yield &block
    end

    if RUBY_VERSION >= '1.9'
      it "allows the === method that invokes a block" do
        block = MockProc.new
        block.should_be_called

        block === :foo
      end
    end

    it "expects arguments" do
      block = MockProc.new
      block.should_be_called.with(:foo)

      block.call(:foo)
    end

    it "expects arguments (sad case)" do
      block = MockProc.new
      block.should_be_called.with(:bar)

      expect { block.call(:foo) }.to raise_error
      block.rspec_reset
    end
  end
end
