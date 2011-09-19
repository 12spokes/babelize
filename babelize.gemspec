# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "babelize/version"

Gem::Specification.new do |s|
  s.name        = "babelize"
  s.version     = Babelize::VERSION
  s.authors     = ["stereosteve"]
  s.email       = ["stereosteve@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "babelize"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'google-spreadsheet-ruby', '~> 0.1.5'
  s.add_dependency 'rails-i18n', '~> 0.1.8'
end
