# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "seed_me/version"

Gem::Specification.new do |s|
  s.name        = "seed_me"
  s.version     = SeedMe::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["SeedMe"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Create db/seed.rb file from your Rails database}
  s.description = %q{}
  
  s.rubyforge_project = "seed_me"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
