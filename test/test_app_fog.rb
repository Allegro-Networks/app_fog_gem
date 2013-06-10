require 'test/unit'
require 'fileutils'

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

	def sh(command)
		@command = command
	end
end

class AppFog
	def initialize(fileutils = FileUtils)
		@fileutils = fileutils
	end

	def login(username, password)
		@fileutils.sh "af login --email #{username} --passwd #{password}"
	end	
end

