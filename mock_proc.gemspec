# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mock_proc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andy Lindeman"]
  gem.email         = ["alindeman@gmail.com"]
  gem.description   = %q{An object that looks like a proc that can be used to verify a block was called (elegantly, of course).}
  gem.summary       = %q{An object that looks like a proc that can be used to verify a block was called (elegantly, of course).}
  gem.homepage      = "https://github.com/alindeman/mock_proc"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mock_proc"
  gem.require_paths = ["lib"]
  gem.version       = MockProc::VERSION

  gem.add_development_dependency "rspec", "~>2.10.0"
end
