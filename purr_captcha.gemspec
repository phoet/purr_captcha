# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "purr_captcha/version"

Gem::Specification.new do |s|
  s.name        = "purr_captcha"
  s.version     = PurrCaptcha::VERSION
  s.authors     = ["phoet"]
  s.email       = ["phoetmail@googlemail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "purr_captcha"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'rails',       '~> 3.0.0'
  s.add_dependency 'httpi',       '~> 0.9.5'
  s.add_dependency 'chunky_png',  '~> 1.2.0'
  
  s.add_development_dependency 'httpclient', '~> 2.2.1'
  s.add_development_dependency 'rspec', '~> 2.6.0'
end
