require 'appfog/shell_command_wrapper'

class AppFog
	def initialize(parameters)
		@shell_command = parameters[:shell_command] || ShellCommandWrapper.new()
		@username = parameters[:username]
		@password = parameters[:password]
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