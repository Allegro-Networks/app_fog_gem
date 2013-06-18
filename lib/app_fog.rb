require 'rubygems'
require 'bundler'
require 'app_fog/shell_command_wrapper.rb'

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

	def update_from_directory(parameters)
		app_name = parameters[:app_name]
		directory = parameters[:directory]
		@shell_command.perform "af update #{app_name} --path #{directory}"
	end

	def start(app_name)
		@shell_command.perform "af start #{app_name}"
	end
end