
$( document ).ready(function() {
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