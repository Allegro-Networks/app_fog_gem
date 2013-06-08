require 'test/unit'

class TestAppFog < Test::Unit::TestCase
	def test_login
		command = 'af login --email username --passwd password'
		assert_equal 'af login --email username --passwd password', command
	end
end