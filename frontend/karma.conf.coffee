# Karma configuration
# Generated on Wed Jan 08 2014 17:31:32 GMT+0530 (IST)

module.exports = (config) ->
	config.set

	# base path, that will be used to resolve all patterns, eg. files, exclude
		basePath: ''

	# frameworks to use
		frameworks: ['qunit']

	# list of files / patterns to load in the browser
		files: [
			'public/javascripts/vendor.js'
			'public/javascripts/app.js'
			'test/helpers.js'
		]

	# list of files to exclude
		exclude: [

		]

	# test results reporter to use
	# possible values: 'dots', 'progress', 'junit', 'growl', 'coverage' , 'html'
		reporters: ['progress']

#		htmlReporter: {
#			outputFile: 'public/test/units.html'
#		}

	# web server port
		port: 9876

	# enable / disable colors in the output (reporters and logs)
		colors: true

	# level of logging
	# possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
		logLevel: config.LOG_INFO

	# enable / disable watching file and executing tests whenever any file changes
		autoWatch: true

	# Start these browsers, currently available:
	# - Chrome
	# - ChromeCanary
	# - Firefox
	# - Opera (has to be installed with `npm install karma-opera-launcher`)
	# - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
	# - PhantomJS
	# - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
		browsers: ['Chrome']

	# If browser does not capture in given timeout [ms], kill it
		captureTimeout: 60000

	# Continuous Integration mode
	# if true, it capture browsers, run tests and exit
		singleRun: false

		plugins: [
			'karma-qunit',
			'karma-chrome-launcher',
			'karma-ember-preprocessor',
			'karma-htmlfile-reporter'
		],

		preprocessors: {
			"**/*.handlebars": 'ember'
		}




