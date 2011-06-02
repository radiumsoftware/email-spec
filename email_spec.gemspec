# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'email_spec/version'

Gem::Specification.new do |s|
  s.name        =  'email_spec'
  s.version     = EmailSpec::VERSION
  s.authors     = ['Ben Mabey', 'Aaron Gibralter', 'Mischa Fierer']
  s.email       = "ben@benmabey.com"
  s.homepage    = "http://github.com/bmabey/email-spec/"
  s.summary     = %q{Easily test email in rspec and cucumber"}
  s.description = s.summary

  s.rubyforge_project = 'email-spec'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
