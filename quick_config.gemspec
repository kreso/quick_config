# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quick_config/version'

Gem::Specification.new do |gem|
  gem.name          = "quick_config"
  gem.version       = QuickConfig::VERSION
  gem.authors       = ["Kreso Tomac"]
  gem.email         = ["kreso.tomac@gmail.com"]
  gem.description   = %q{A quick and easy way to set and access configuration data in your Ruby applications.}
  gem.summary       = %q{Quickly set up and use application configuration data.}
  gem.homepage      = "http://quick-config.herokuapp.com/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license       = "MIT"  
end