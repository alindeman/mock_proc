if defined?(RSpec::Mocks::Methods)
  MockProc.class_eval { include RSpec::Mocks::Methods }

  module RSpec::Mocks::Methods
    def should_be_called(*args)
      should_receive(:__call__, *args)
    end
  end
end
