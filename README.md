Usage:

task :default do
 	username = 'ben_nuttall'
	password = 'nowthennowthen'
	app_name = 'yewtree'

	credentials = Credentials.new(username, password)

 	appfog = AppFog.new(credentials)
	appfog.update(app-name)
	appfog.start(app-name)
end
