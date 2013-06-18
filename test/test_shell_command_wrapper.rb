require 'test/unit'
require_relative '../lib/app_fog/shell_command_wrapper.rb'

class TestShellCommandWrapper < Test::Unit::TestCase
	def test_send_command
		shell = ShellCommandWrapper.new(self)
		shell.perform('bob')
		assert_equal(@command, 'bob')
	end

	def test_throws_error_when_cannot_log_in
		@output = FakeStdOut.new('Problem with login, invalid account or password when attempting to login to')
		assert_raise LoginError do
			shell = ShellCommandWrapper.new(self)
			shell.perform('af login --email username --passwd password')
		end
	end

	def popen3(command)
		@command = command
		stdout = @output
		stdin = nil
		stderr = nil
		return stdin, stdout, stderr
	end
end

class ShellCommandWrapperIntegrationTest < Test::Unit::TestCase
	def test_send_command
		shell = ShellCommandWrapper.new()
		shell.perform('af')
	end
end

class FakeStdOut
	def initialize(output)
		@output = output
	end

	def read
		return @output
	end
end