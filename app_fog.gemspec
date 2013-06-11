Gem::Specification.new do |s|
  s.name        = 'app_fog'
  s.version     = '1.0.2'
  s.date        = '2013-06-07'
  s.summary     = "A wrapper for the app fog command line interface."
  s.description = "Wrapping the app fog CLI into a gem to help you deploy more easily using your rake script. Fixed issues with first version."
  s.authors     = ["@ruby_gem"]
  s.email       = 'gemma.cameron@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.test_files  = ['test/test_app_fog.rb', 'test/test_shell_command_wrapper.rb']
  s.homepage    = 'http://rubygems.org/gems/app_fog'

end