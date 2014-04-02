App= require 'app'
App.Post=DS.Model.extend
	desc: DS.attr 'string'
	title: DS.attr 'string'