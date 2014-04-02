App = require("app")

App.TestingAdapter = DS.FixtureAdapter.extend                # This adapter has ability to search the fixtures not only on
																														 # id but also on other properties which can be given as a query
																														 # e.g sample = App.Sample.find({text:'abc'})
	simulateRemoteResponse: false
#	queryFixtures: (fixtures, query, type) ->
##		console.log query
##		console.log type
#		fixtures.filter (item) ->
#			for prop of query
#				unless item[prop] is query[prop]
##					console.log item[prop]
#					return false
#			true

App.Store = DS.Store.extend
	adapter: App.TestingAdapter.create()

App.setupForTesting()
App.injectTestHelpers()
