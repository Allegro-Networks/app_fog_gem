require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

task :default => [:tests]

task :tests do 
	test_files = FileList['test/test*.rb']
	test_files.each do | test_file |
		sh "ruby #{test_file}" 
	end
end
