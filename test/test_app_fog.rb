require 'test/unit'
require 'Open3'
require './test_shell_command_wrapper.rb'
require '../lib/app_fog.rb'

class TestAppFog < Test::Unit::TestCase
	def test_login
		username = 'username'
		password = 'password'
		
		appfog = AppFog.new(username, password, self)

		appfog.login(username, password)
		assert_equal 'af login --email username --passwd password', @command
	end

	def test_integration
		appfog = AppFog.new('bob', 'jeremy')
		appfog.login('bob', 'jeremy')
	end

	def perform(command)
		@command = command
	end
end




