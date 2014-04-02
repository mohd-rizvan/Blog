window.App = require("app")
require 'constants'
require 'router'
require 'store'

#require 'store-test' #uncomment this line to run the tests
# add "tests" also to run the tests
requireOrder = ["mixins", "routes", "models", "views", "controllers", "helpers", "templates", "components"]

requireOrder.forEach (dir) ->
	window.require.list().filter((module) ->
		new RegExp("^" + dir + "/").test module
	).forEach (module) ->
		require module


#window.fbAsyncInit = ()->
#	FB.init
#		appId: App.CONSTANTS.FACEBOOK_APP_ID
#		status: true
#		cookie: true
#		xfbml: true