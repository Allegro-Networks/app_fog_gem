Usage:

Ensure you have installed the af gem - https://docs.appfog.com/getting-started/af-cli

	task :default do
 		username = 'ben_nuttall'
		password = 'trolololol'
		app_name = 'they-see-me-trollin'

		credentials = Credentials.new(username, password)

 		appfog = AppFog.new(credentials)
		appfog.update(app-name)
		appfog.start(app-name)
	end
