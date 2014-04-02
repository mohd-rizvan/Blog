QUnit.module "Sample Tests",
	#The setup and teardown hooks will be called before and after each test that is defined below this module.
	setup: ->
		Ember.run App,->
			App.advanceReadiness()

	teardown: ->
		Ember.run App,->                                  # reset the application to undo any changes made during the test
			App.reset()

test('this is always true', ->
	equal(1, 1, '1 is not 1... ooooh!')
)

test("/", ->
	visit("/").then( ->
		equal(find("h2").text(), "Welcome to Ember.js", "Application header is rendered")
	)
)