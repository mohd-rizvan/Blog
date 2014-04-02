fs = require 'fs'
sysPath = require 'path'

# A simple helper that checks if string starts with substring.
startsWith = (string, substring) ->
	string.lastIndexOf(substring, 0) is 0

exports.config =
# See http://brunch.readthedocs.org/en/latest/config.html for documentation.
	sourceMaps:true
	plugins:
		autoReload:
			enabled: true
	conventions:
		assets:/assets(\/|\\)/
		ignored: (path) ->
			if path.indexOf("app#{sysPath.sep}templates#{sysPath.sep}") is 0
				return false
			else
				return (startsWith(sysPath.basename(path),'_'))
	files:
		javascripts:
			joinTo:
				'javascripts/app.js': /^app(\/|\\)(?!(tests|store-test))/
				'javascripts/vendor.js': /^(vendor\/scripts\/(commons|development)|vendor\\scripts\\(commons|development))/
			order:
				before: [
					'vendor/scripts/commons/console-helper.js',
					'vendor/scripts/development/jquery-2.1.0.js',
					'vendor/scripts/development/handlebars.js',
					'vendor/scripts/development/ember.js',
					'vendor/scripts/development/ember-data.js',
					'vendor/scripts/commons/prefixfree.min.js',
					'vendor/scripts/commons/bootstrap.js',
				]
		stylesheets:
			joinTo:
				'stylesheets/app.css': /^((vendor\/styles)|(app\/styles))/
			order:
				before: [
					'vendor/styles/font-awesome.css',
					'vendor/scripts/bootstrap.css'
				]
				after: []

		templates:
			precompile: true
			root: 'templates'
			defaultExtension: 'hbs'
			joinTo: 'javascripts/app.js'

	sourceMaps: false
	server:
		port: 3333
		base: '/'
		run: no


#	Environment specific overrides
	overrides:
	#		configuration for rails development scripts
		test:
			files:
				javascripts:
					joinTo:
						'javascripts/app.js': /^app(\/|\\)/
						'javascripts/vendor.js': /^(vendor\/scripts\/(commons|development)|vendor\\scripts\\(commons|development))/
					order:
						before: [
							'vendor/scripts/commons/console-helper.js',
							'vendor/scripts/development/jquery-2.1.0.js',
							'vendor/scripts/development/handlebars.js',
							'vendor/scripts/development/ember.js',
							'vendor/scripts/development/ember-data.js',
							'vendor/scripts/commons/prefixfree.min.js',
							'vendor/scripts/commons/bootstrap.js',
						]
				stylesheets:
					joinTo:
						'stylesheets/app.css': /^((vendor\/styles)|(app\/styles))/
					order:
						before: [
							'vendor/styles/font-awesome.css',
							'vendor/scripts/bootstrap.css'
						]
						after: []

	#	configuration for rails development scripts
		rails_dev:
			paths:
				'public': "../backend/public"

#		configuration for rails production scripts
		rails_prod:
			paths:
				'public': "../backend/public"
			optimize:true
			sourceMaps:false
			files:
				javascripts:
					joinTo:
						'javascripts/app.js': /^app(\/|\\)(?!(tests|store-test))/
						'javascripts/vendor.js': /^(vendor\/scripts\/(commons|production)|vendor\\scripts\\(commons|production))/
					order:
						before: [
							'vendor/scripts/production/jquery-2.1.0.min.js',
							'vendor/scripts/production/handlebars.runtime.js',
							'vendor/scripts/production/ember.prod.js',
							'vendor/scripts/production/ember-data.prod.js',
							'vendor/scripts/commons/prefixfree.min.js',
							'vendor/scripts/commons/bootstrap.min.js',
						]

		mobile_production:
			conventions:
				assets:/assets(\/|\\)(?!index.html)/
			paths:
				'public': "../phonegap-mobile/www"
			optimize:true
			sourceMaps:false
			files:
				javascripts:
					joinTo:
						'javascripts/app.js': /^app(\/|\\)(?!(tests|store-test))/
						'javascripts/vendor.js': /^(vendor\/scripts\/(commons|production)|vendor\\scripts\\(commons|production))/
					order:
						before: [
							'vendor/scripts/production/jquery-2.1.0.min.js',
							'vendor/scripts/production/handlebars.runtime.js',
							'vendor/scripts/production/ember.prod.js',
							'vendor/scripts/production/ember-data.prod.js',
							'vendor/scripts/commons/prefixfree.min.js',
							'vendor/scripts/commons/bootstrap.min.js',
						]

