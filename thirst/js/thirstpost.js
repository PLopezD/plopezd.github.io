$(document).ready(function() {
		var winWidth = $( window ).width() 
	if(winWidth < 768){
		$("#logo")[0].src = "../img/white.png"
		$("#logo").addClass('purple')
		$(".showbox").hide()
	};

	$( window ).resize(function() {
		var resizeWidth = $( window ).width() 
		if (resizeWidth < 768){
			$("#logo")[0].src = "../img/white.png"
			$("#logo").addClass('purple')
			$(".showbox").hide()
		} else {
			$("#logo")[0].src = "../img/multi.png"
			$("#logo").removeClass('purple')
			$(".showbox").show()
		}

	});


});