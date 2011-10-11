# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$("#project-list li").click (
		func = (event) ->
			$.getJSON( $(this).attr("rel").toString() + ".json", 
				func = (data) ->
					console.log data
			)	
	)