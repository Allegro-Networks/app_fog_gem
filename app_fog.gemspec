Gem::Specification.new do |s|
  s.name        = 'app_fog'
  s.version     = '1.0.3'
  s.date        = '2013-06-12'
  s.summary     = "A wrapper for the app fog command line interface."
  s.description = "Wrapping the app fog CLI into a gem to help you deploy more easily. Don't forget to install the af CLI using 'gem install af'. You can only update and start at the moment. Tweet @ruby_gem if you want more, or fork the code."
  s.authors     = ["@ruby_gem"]
  s.email       = 'gemma.cameron@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.test_files  = ['test/test_app_fog.rb', 'test/test_shell_command_wrapper.rb']
  s.homepage    = 'http://rubygems.org/gems/app_fog'

end