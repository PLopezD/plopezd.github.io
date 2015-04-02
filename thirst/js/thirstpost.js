$(document).ready(function() {
		var winWidth = $( window ).width() 
	if(winWidth < 1200){
		$("#logo")[0].src = "../img/white.png"
		$("#logo").addClass('pink')
		$(".showbox").hide()
	};

	$( window ).resize(function() {
		var resizeWidth = $( window ).width() 
		if (resizeWidth < 1200){
			$("#logo")[0].src = "../img/white.png"
			$("#logo").addClass('pink')
			$(".showbox").hide()
		} else {
			$("#logo")[0].src = "../img/multi.png"
			$("#logo").removeClass('pink')
			$(".showbox").show()
		}

	});


});