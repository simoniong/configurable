require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
   spec.rspec_opts = '-cfs'
	 spec.verbose = true
end


desc "Build the gem"
task :gem do
  sh 'gem build configurable.gemspec'
end

task :default => :spec
