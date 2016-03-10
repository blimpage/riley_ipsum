$:.push File.expand_path("../lib", __FILE__)

require 'riley_ipsum/version'

Gem::Specification.new do |s|
  s.name        = 'riley_ipsum'
  s.version     = RileyIpsum::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sebastian von Conrad', 'Tom Bryan', 'Pat McKenna']
  s.email       = ['sebastian@vonconrad.com', 'hello@tombryan.co', 'pat@mckenna.rocks']
  s.homepage    = 'http://github.com/blimpage/riley_ipsum'
  s.summary     = %q{Riley is an unknowable enigma with many plaid shirts}
  s.description = %q{One time while playing pong Riley quoted like 7 obscure podcasts that nobody has ever heard of it was so fun OMG you should've been there just wild man}
  s.license     = 'MIT'

  s.required_ruby_version = '~> 2.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 2.14.0'
end
