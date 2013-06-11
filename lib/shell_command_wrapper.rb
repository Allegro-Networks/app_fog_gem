class AppFog::ShellCommandWrapper
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

class AppFog::LoginError < StandardError

end