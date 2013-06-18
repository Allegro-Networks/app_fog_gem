require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |test_run|
  test_run.libs << "lib"
  test_run.test_files = FileList['test/*.rb']
  test_run.verbose = true
end