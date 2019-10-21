begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  raise 'Looks like RSpec was not properly installed. Did you forget to run `bundle`?'
end

task :default => [:greet]

task :greet do
  puts 'You did it!'
  puts 'you should now be able to run the test for each exercise'
  puts 'with the command `rake exerciseX` where X is a number'
  puts 'try `rake exercise1` now'
end
