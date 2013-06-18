require 'test/unit'
require_relative '../lib/app_fog.rb'

class TestAppFog < Test::Unit::TestCase
	def test_login
		appfog = AppFog.new(username: 'username', password: 'password', shell_command: self)
		assert_equal 'af login --email username --passwd password', @command
	end

	def test_update
		appfog = AppFog.new(username: 'username', password: 'password', shell_command: self)
		appfog.update('app-name')
		assert_equal 'af update app-name', @command
	end		

	def test_update_from_directory
		directory = "./aDirectory"
		appfog = AppFog.new(shell_command: self)
		appfog.update_from_directory(app_name: 'app-name', directory: directory)
		assert_equal "af update app-name --path #{directory}", @command
	end

	def test_start
		appfog = AppFog.new(username: 'username', password: 'password', shell_command: self)
		appfog.start('app-name')
		assert_equal 'af start app-name', @command
	end

	def perform(command)
		@command = command
	end
end