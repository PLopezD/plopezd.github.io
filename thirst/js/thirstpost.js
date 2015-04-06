$(document).ready(function() {
	// JQuery to change logo on page resize
	var winWidth = $( window ).width() 
	if(winWidth < 768){
		$("#logo")[0].src = "../img/white.png"
		$("#logo").addClass('purple')
		$(".showbox").hide()
	};

	$( window ).resize(function() {
		var resizeWidth = $( window ).width() 
		if (resizeWidth < 768){
			$("#logo")[0].src = "../img/invertedlogo.png"
			$("#logo").addClass('purple')
			$(".showbox").hide()
		} else {
			$("#logo")[0].src = "../img/multi.png"
			$("#logo").removeClass('purple')
			$(".showbox").show()
		}
	});

// jQuery for page scrolling feature - requires jQuery Easing plugin
	$(function() {
		$('a.page-scroll').bind('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
		});
	});



});
