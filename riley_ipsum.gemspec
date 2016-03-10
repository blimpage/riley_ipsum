$:.push File.expand_path("../lib", __FILE__)

require 'riley_ipsum/version'

Gem::Specification.new do |s|
  s.name        = 'riley_ipsum'
  s.version     = RileyIpsum::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sebastian von Conrad', 'Tom Bryan']
  s.email       = ['sebastian@vonconrad.com', 'hello@tombryan.co']
  s.homepage    = 'http://github.com/vonconrad/riley_ipsum'
  s.summary     = %q{Riley is a sensible Rails developer with good hair}
  s.description = %q{One time at RailsCamp Riley stayed up until like 10pm going crazy sick on some code it was so fun OMG you should've been there just wild man}
  s.license     = 'MIT'

  s.required_ruby_version = '~> 2.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 2.14.0'
end
