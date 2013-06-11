
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

	def update(app_name)
		@shell_command.perform "af update #{app_name}"
	end

	def start(app_name)
		@shell_command.perform "af start #{app_name}"
	end
end

class Credentials
	attr_reader :username, :password

	def initialize(username, password)
		@username = username
		@password = password
	end
end