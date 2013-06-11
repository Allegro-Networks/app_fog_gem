require 'test/unit'
require 'Open3'
require './test_shell_command_wrapper.rb'
require '../lib/app_fog.rb'

class TestAppFog < Test::Unit::TestCase
	def test_login
		credentials = Credentials.new(username: 'username', password: 'password')

		appfog = AppFog.new(credentials, self)
		assert_equal 'af login --email username --passwd password', @command
	end

	def test_update
		credentials = Credentials.new(username: 'username', password: 'password')
		appfog = AppFog.new(credentials, self)
		appfog.update('app-name')
		assert_equal 'af update app-name', @command
	end

	def test_start
		credentials = Credentials.new(username: 'username', password: 'password')
		appfog = AppFog.new(credentials, self)
		appfog.start('app-name')
		assert_equal 'af start app-name', @command
	end

	def perform(command)
		@command = command
	end
end



