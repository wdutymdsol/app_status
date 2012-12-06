# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mcc_admin/version'

Gem::Specification.new do |gem|
  gem.name          = "mcc_admin"
  gem.version       = MccAdmin::VERSION
  gem.authors       = ["Will Duty"]
  gem.email         = ["wduty@mdsol.com"]
  gem.description   = %q{creates an http response to route /app_status and returns http status 200/OK and content body "OK"}
  gem.summary       = %q{handles app_status calls to rails app}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
