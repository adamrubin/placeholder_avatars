# -*- encoding: utf-8 -*-
require File.expand_path('../lib/placeholder_avatars/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Adam Rubin"]
  gem.email         = ["adam@barbershoplabs.com"]
  gem.description   = %q{Simply display a random list of placeholder avatars.}
  gem.summary       = %q{Simply display a random list of placeholder avatars.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "placeholder_avatars"
  gem.require_paths = ["lib"]
  gem.version       = PlaceholderAvatars::VERSION

  gem.add_runtime_dependency "twitter", ">=4.8.1"
end
