# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "impermium/version"

Gem::Specification.new do |s|
  s.name        = "impermium"
  s.version     = Impermium::VERSION
  s.authors     = ["Sunny Gleason"]
  s.email       = ["sunny.gleason@gmail.com"]
  s.homepage    = ""
  s.summary     = "ruby access to the impermium web service"
  s.description = "ruby access to the impermium web service"

  s.rubyforge_project = "impermium"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "silly_putty", "~> 0.0.1"
  s.add_runtime_dependency "json"
end
