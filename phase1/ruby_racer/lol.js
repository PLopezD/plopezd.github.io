$( document ).ready(function(){

	$(".game").hide();


	var player_number = 2
	console.log(player_number)
	var add_input = function(player_number){
		if (player_number > 10){
			return
		}
		$('#forms').append("<input class='form-group' id='form"+player_number+"'placeholder='Player "+player_number+"' maxlength='20'></input>")
		console.log(player_number)
	};

	var remove_input = function(player_number){
		if (player_number < 2){
     // player_number = 2;
     return
 }
 $('#forms > input:last-child').remove();
 console.log(player_number)
};

var collect_input = function(player_number){
	var player_hash = {}
	for (var i=1; i<=player_number ;i++){
		console.log('#form'+i);
		player_hash[$("#form"+i).val()]=0;
	}
	return player_hash;
};
function sleep(milliseconds) {
	var start = new Date().getTime();
	for (var i = 0; i < 1e7; i++) {
		if ((new Date().getTime() - start) > milliseconds){
			break;
		}
	}
};
var game = function(player_hash){
	console.log("in game")
	var distances = player_hash;
	var names = Object.keys(player_hash);
	var game_over = false;


	var b = distances[names[1]]     
	console.log(names.length)
	progress(0, $("#track"+[i]+""));

	while (game_over == false){
		for (var i=0; i<names.length; i++){
			console.log("in for loop")
			var roll = Math.ceil((Math.random()*6));
			distances[names[i]] = distances[names[i]] + roll;
			progress(100*(distances[names[i]]/30), $("#track"+[i]+""));
			if ((distances[names[i]] + roll) >30 ){
				console.log(names[i])
				game_over = true;
				var timeout_time = 500
				var height = document.body.clientHeight;
				var width = document.body.clientWidth;
				var $a = $('#name_holder'+[i]);
				setTimeout(function(){$a.animate({
					// left: width / 2
					left: ($a).parent().width() / 2 
					// left: ($a).parent().width() / 2 - ($a).width() / 2, bottom: ($a).parent().height() / 2 - ($a).height() / 2
				}, 2000)},timeout_time);
			}
		}
	}
	// setTimeout(function(){$a.animate({},timeout_time)
	console.log(distances);
	console.log(width);
	console.log(height);

};
function progress(percent, $element) {
	var progressBarWidth = percent * $element.width() / 100;
	$element.data('',1).animate({ width: progressBarWidth }, 1000).html();
}
var define_playing_board = function(hash){
	var player_names = hash;
	n = 0
	while (n < Object.keys(player_names).length) {
		$('.game').append("<button type='button' class='btn btn-lg btn-default' id='name_holder"+[n]+"'>"+(Object.keys(player_names))[n]+"</button><div class='racetrack' id='track"+[n]+"'</div>");
		console.log(n);
		n++;
	}
};
$('.btn-warning').click(function(event){
	event.preventDefault();
	if (player_number <10){
		player_number++;
		add_input(player_number);
	}
});
$('.btn-danger').click(function(event){
	console.log("removing...")
	event.preventDefault();
	if (player_number >2){
		player_number--;
		remove_input(player_number);
	}
});
$('.btn-success').click(function(event){
	event.preventDefault();
	collect_input(player_number);
	$("#wrapper").fadeOut('fast');
	define_playing_board(collect_input(player_number));
		// $(".game").show()
		// game(collect_input(player_number));
		$(".game").fadeIn(1000,function(){game(collect_input(player_number));
		});
	});
});

