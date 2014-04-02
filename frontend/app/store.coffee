App = require("app")

App.Store = DS.Store.extend
	adapter: DS.ActiveModelAdapter.extend
		host: App.CONSTANTS.HOST
