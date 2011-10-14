# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

//= require plupload/plupload.full.js
uploader = {}
$ ->
	uploader = new plupload.Uploader({  
		runtimes : "gears,silverlight,flash,html5",  
		browse_button : 'pickfiles',  
		container : "upcontainer",  
		max_file_size : '10mb',  
		url : uploadURL,  
		flash_swf_url: "/plupload.flash.swf",  
		silverlight_xap_url: "/images/plupload.silverlight.xap",  
		multipart: true,  
		multipart_params: {  
	 		"authenticity_token" : '<%= form_authenticity_token %>'  
		}  
	})  
 
	uploader.bind('Init', 
		func = (up, params) ->  
	    $('#filelist').html("<div>Current runtime: " + params.runtime + "</div>");  
	)  
 
	uploader.bind('FilesAdded', 
	func = (up, files) ->  
		$.each(files, func = (i, file) -> 
			$('#filelist').append(
				'<div id="' + file.id + '">' +  
				'File: ' + file.name + ' (' + plupload.formatSize(file.size) + ') <b></b>' +  '</div>'
				)
			)   
	)  
 
	uploader.bind('UploadProgress', 
		func = (up, file) ->
	    	$('#' + file.id + " b").html(file.percent + "%")
	)  
 
	$('#uploadfiles').click(
		func = (e) ->  
			uploader.start() 
			e.preventDefault() 
	)  
	uploader.init()