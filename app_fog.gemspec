Gem::Specification.new do |s|
  s.name        = 'app_fog'
  s.version     = '1.0.1'
  s.date        = '2013-06-07'
  s.summary     = "A wrapper for the app fog command line interface."
  s.description = "Wrapping the app fog CLI into a gem to help you deploy more easily using your rake script. Fixed issues with first version."
  s.authors     = ["@ruby_gem"]
  s.email       = 'gemma.cameron@gmail.com'
  s.files       = ["lib/app_fog.rb", 'lib/app_fog/shell_command_wrapper.rb', 'lib/app_fog/ogin_error.rb']
  s.homepage    = 'http://rubygems.org/gems/app_fog'

end