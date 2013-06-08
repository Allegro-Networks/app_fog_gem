require 'test/unit'

class TestAppFog < Test::Unit::TestCase
	def test_login
		assert_equal 'af login --email username --passwd password', 'af login --email username --passwd password'
	end
end