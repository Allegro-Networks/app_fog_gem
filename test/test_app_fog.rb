require 'test/unit'

class TestAppFog < Test::Unit::TestCase
	def test_login
		username = 'username'
		password = 'password'
		login(username, password)
		assert_equal 'af login --email username --passwd password', @command
	end

	def login(username, password)
		@command = "af login --email #{username} --passwd #{password}"
	end
end