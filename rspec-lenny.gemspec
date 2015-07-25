# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/lenny/version'

Gem::Specification.new do |s|
  s.name        = "rspec-lenny"
  s.version     = Rspec::Lenny::VERSION
  s.authors     = ["tcain"]
  s.email       = ["tdcain89@gmail.com"]
  s.homepage    = "http://www.github.com/tdcain89"
  s.summary     = "A gem that changes the default rspec format to be slightly more interesting."
  s.description = "A gem that changes the default rspec format to be slightly more interesting."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'rspec-rails', '~> 3.2', '>= 3.2.1'
end
