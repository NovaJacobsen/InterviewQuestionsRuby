begin
  require 'rspec/core/rake_task'
  2.times do |n|
    desc "Run test for exercise #{n}"
    RSpec::Core::RakeTask.new(:"exercise#{n}") do |t|
      t.pattern = Dir.glob "spec/exercise#{n}_spec.rb"
    end
  end
rescue LoadError
  raise 'Looks like RSpec was not properly installed. Did you forget to run `bundle`?'
end

task :default => [:greet]

task :greet do
  puts 'You did it!'
  puts 'you should now be able to run the test for each exercise'
  puts 'with the command `rake exerciseX` where X is a number'
  puts 'try `rake exercise1` now or `rake --tasks` to see all tasks available'
end

