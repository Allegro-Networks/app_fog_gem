require 'test/unit'

class TestAppFog < Test::Unit::TestCase
	def test_login
		login
		assert_equal 'af login --email username --passwd password', @command
	end

	def login
		@command = "af login --email username --passwd password"
	end
end