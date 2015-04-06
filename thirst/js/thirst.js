$(document).ready(function() {
	console.log('Ready!')
// JS to show additional sort box

$('#primary').change(function(e) {
	e.preventDefault()
	var selection = $('.sort option:selected').val();
	var secondaryMenu = $("#secondary")
	
	if (selection == 'type'){
		secondaryMenu.toggle()
		setOptions(["Design","UX","Other"])
		return
	} else if (selection == 'author'){
		secondaryMenu.toggle()
		setOptions(["John","Taek","Pablo"])
		return
	} else if ($(secondaryMenu).is(":visible") ) {
		secondaryMenu.toggle()
		console.log("Sort by Date!")
	}

});

var setOptions = function(arrayOfOptions){
	var secondaryMenu = document.querySelector("#secondary select")
	for (var i = arrayOfOptions.length - 1; i >= 0; i--) {
		option = new Option( arrayOfOptions[i],arrayOfOptions[i] );
		secondaryMenu.options[i] = option;

	};
}

$('.search').submit(function(e) {
	e.preventDefault()

	console.log("search submit")
});

});