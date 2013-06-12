## app_fog_gem
is a wrapper around the app fog command line interface. It's a slightly nicer way of deploying to app fog in your scripts.

Ensure you have installed the af gem - https://docs.appfog.com/getting-started/af-cli

Currently logs you in when you create the appfog object, you can then update and start the app. Currently on updates from the location where you're running the script from.

Please tweet @ruby_gem with any problems or requests, contributions welcome.

## Installation

`gem install app_fog` or put `require 'app_fog'` in your Gemfile.

## Usage


``` ruby
require 'app_fog'

task :default do
  your_username = 'your_email'
  your_password = 'your_super_secret_password'
  app_name = 'name_of_your_app_fog_app'

  appfog = AppFog.new(username: your_username, password: your_password)
  appfog.update(app_name)
  appfog.start(app_name)
end
```
