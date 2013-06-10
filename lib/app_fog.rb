
class AppFog
	def initialize(credentials, shell_command = ShellCommandWrapper.new())
		@shell_command = shell_command
		@username = credentials.username
		@password = credentials.password
		login
	end

	def login
		@shell_command.perform "af login --email #{@username} --passwd #{@password}"
	end	
end

class Credentials
	attr_accessor :username, :password
end