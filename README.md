Usage:

Ensure you have installed the af gem - https://docs.appfog.com/getting-started/af-cli

	task :default do
 		your_username = 'your_email'
		your_password = 'your_super_secret_password'
		app_name = 'name_of_your_app_fog_app'

		appfog = AppFog.new(username: your_username, password: your_password)
		appfog.update(app_name)
		appfog.start(app_name)
	end