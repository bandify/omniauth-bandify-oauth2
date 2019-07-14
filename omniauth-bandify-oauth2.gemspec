# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'omniauth', 'bandify_oauth2', 'version'), __FILE__)

Gem::Specification.new do |s|
  s.name        = "omniauth-bandify-oauth2"
  s.version     = OmniAuth::BandifyOauth2::VERSION
  s.authors     = ['Bandify']
  s.email       = ['hello@bandify.co']
  s.homepage    = "https://github.com/Bandify/omniauth-bandify-oauth2"
  s.summary     = %q{OmniAuth strategy for Bandify.}
  s.description = %q{OmniAuth strategy for Bandify.}

  s.rubyforge_project = "omniauth-bandify-oauth2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'multi_json'
  s.add_runtime_dependency 'omniauth-oauth2'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
