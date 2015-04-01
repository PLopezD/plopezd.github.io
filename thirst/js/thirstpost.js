$(document).ready(function() {
	$( window ).resize(function() {
		var winWidth = $( window ).width() 
		if (winWidth < 766){
			$("#logo").src = "../img/white.png"
			$("#logo").addClass('pink')
		} else {
			$("#logo").removeClass('pink')
			console.log("not")
		}

	});

	

});