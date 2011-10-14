# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
//= require jquery.masonry.min
$ ->
	$(".project").click (
		func = (event) ->
			$.getJSON( $(this).attr("rel").toString() + ".json", 
				func = (data) ->
					console.log data
			)	
	)
	$('#projects').masonry({
		itemSelector : '.item',
		gutter: 10,
		columnWidth : 250}
	)