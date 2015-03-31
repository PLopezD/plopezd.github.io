$(document).ready(function() {
	console.log('Ready!')

	$('.sort').change(function(e) {
		e.preventDefault()
		console.log("sort change")
	});
	
	$('.search').submit(function(e) {
		e.preventDefault()
		console.log("search submit")
	});

});