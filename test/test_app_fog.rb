require 'test/unit'
require 'Open3'

class TestAppFog < Test::Unit::TestCase
	def test_login
		username = 'username'
		password = 'password'
		
		appfog = AppFog.new(self)

		appfog.login(username, password)
		assert_equal 'af login --email username --passwd password', @command
	end

	def test_integration
		appfog = AppFog.new
		appfog.login('bob', 'jeremy')
	end

	def perform(command)
		@command = command
	end
end

class AppFog
	def initialize(shell_command = ShellCommandWrapper.new)
		@shell_command = shell_command
	end

	def login(username, password)
		@shell_command.perform "af login --email #{username} --passwd #{password}"
	end	
end

def TestShellCommandWrapper
end

class ShellCommandWrapper
	def initialize(open3 = Open3)
		@open3 = open3
	end

	def perform(command)
		stdin, stdout, stderr = @open3.popen3 command
	end
end

