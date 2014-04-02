# Application bootstrapper

config =
	LOG_TRANSITIONS: true,
	LOG_TRANSITIONS_INTERNAL: false
	#rootElement: '#qunit-fixture'          #comment this line to run tests using karma

module.exports = Ember.Application.create(config)

