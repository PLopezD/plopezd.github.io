$(document).ready(function(){
	$("ul#nav li a").on("click", function(e){
		e.preventDefault();
		
		var data = $(this).data("tab");
		
		$(".tab").removeClass("active");
		$(".nav-item").removeClass("selected");
		
		$(this).addClass("selected");
		$("#" + data).addClass("active");
	});
	
});