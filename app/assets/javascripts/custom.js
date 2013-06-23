
$( document ).ready(function() {
 // make nav panel toggle accordions
    // name
    $('.panel-by-name').on('click', function (e){
    	$( "#nav-panel" ).panel( "close" );
	    $('#by-name').trigger('expand');
	});

	// location
    $('.panel-by-location').on('click', function (e){
    	$( "#nav-panel" ).panel( "close" );
	    $('#by-location').trigger('expand');
	});

	// priority
    $('.panel-by-priority').on('click', function (e){
    	$( "#nav-panel" ).panel( "close" );
	    $('#by-priority').trigger('expand');
	});

	// bios
    $('.panel-need-bios').on('click', function (e){
    	$( "#nav-panel" ).panel( "close" );
	    $('#by-need').trigger('expand');
	    $('#need-bios').trigger('expand');
	});

	// photos
    $('.panel-need-photos').on('click', function (e){
    	$( "#nav-panel" ).panel( "close" );
	    $('#by-need').trigger('expand');
	    $('#need-photos').trigger('expand');
	});

	// videos
    $('.panel-need-videos').on('click', function (e){
    	$( "#nav-panel" ).panel( "close" );
	    $('#by-need').trigger('expand');
	    $('#need-videos').trigger('expand');

	});




	// toggle photo upload button
	$('input.photo-complete').on('click', function (e){
		$('#upload-photo').hide();
	});
	$('input.photo-outdated, input.photo-incomplete').on('click', function (e){
		$('#upload-photo').show();
	});

	// toggle video upload button
	$('input.video-complete').on('click', function (e){
		$('#upload-video').hide();
	});
	$('input.video-outdated, input.video-incomplete').on('click', function (e){
		$('#upload-video').show();
	});




});