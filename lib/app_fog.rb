
class AppFog
	def initialize(credentials, shell_command = ShellCommandWrapper.new())
		@shell_command = shell_command
		@username = credentials.username
		@password = credentials.password
	end

	def login(username, password)
		@shell_command.perform "af login --email #{username} --passwd #{password}"
	end	
end

class Credentials
	attr_accessor :username, :password
end