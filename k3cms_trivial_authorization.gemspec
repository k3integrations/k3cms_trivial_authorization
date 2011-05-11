# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "k3cms/authorization/trivial/version"

Gem::Specification.new do |s|
  s.name          = 'k3cms_trivial_authorization'
  s.summary       = %q{Provides trivial authorization capabilities}
  s.description   = %q{This gem works with other K3cms gems and provides trivial authorization capabilities.  All authenticated visitors have full admin rights.  All other (unauthenticated) visitors to the website have the rights of guest.  This gem provides no way to change the default authorizations provided by other gems.}
  s.homepage      = "http://k3cms.org/#{s.name}"

  s.add_dependency 'k3cms_core'

  s.add_development_dependency 'rspec', '~> 2.2.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.version       = K3cms::TrivialAuthorization::Version
  s.platform      = Gem::Platform::RUBY
  s.authors       = `git shortlog --summary --numbered         | awk '{print $2, $3    }'`.split("\n")
  s.email         = `git shortlog --summary --numbered --email | awk '{print $2, $3, $4}'`.split("\n")
end
