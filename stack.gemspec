# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "stack"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Harold Giménez"]
  s.email       = ["harold.gimenez@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Just a stack}
  s.description = %q{BDD it up!}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'grit'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
