require File.expand_path(File.join(File.dirname(__FILE__),'lib', 'configurable', 'version' ))

Gem::Specification.new do |s|
  s.name            = "configurable"
  s.version         = Configurable::VERSION::STRING
  s.platform        = Gem::Platform::RUBY
  s.summary         = "A module dynamically create attribute accessors"
  s.description     = "Configurable provides a minimal, modular and adaptable inteface for developing a configurable ruby class"
  s.files           = Dir['{lib/**/*,spec/**/*}'] +
                        %w(LICENSE configurable.gemspec Rakefile README.rdoc)
  s.require_path    = 'lib'
  s.test_files      = Dir['spec/*_spec.rb']
  s.author          = ['simon iong']
  s.email           = 'manin.iong@gmail.com'
  s.homepage        = 'http://github.com/simoniong/configurable'
	s.license         = 'MIT'
end
