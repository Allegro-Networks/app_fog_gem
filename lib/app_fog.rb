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

class Credentials
  attr_reader :username, :password
 
  def initialize(parameters)
    @username = parameters[:username]
    @password = parameters[:password]
  end
end

class ShellCommandWrapper
	def initialize(open3 = Open3)
		@open3 = open3
	end

	def perform(command)
		stdin, stdout, stderr = @open3.popen3 command
		output = stdout.read unless stdout == nil

		puts output

		if (output != nil && output.include?('Problem with login, invalid account or password when attempting to login to'))
			raise LoginError.new(output)
		end
	end
end

class LoginError < StandardError

end