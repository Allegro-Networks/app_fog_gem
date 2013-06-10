
class AppFog
	def initialize(shell_command = ShellCommandWrapper.new)
		@shell_command = shell_command
	end

	def login(username, password)
		@shell_command.perform "af login --email #{username} --passwd #{password}"
	end	
end