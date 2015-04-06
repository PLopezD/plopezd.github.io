$(document).ready(function() {
	console.log('Ready!')
// JS to show additional sort box

$('#primary').change(function(e) {
	e.preventDefault()
	var selection = $('#primary option:selected').val();
	var secondaryMenu = $("#secondary")
	console.log(selection)
	if (selection == 'type'){
		secondaryMenu.show()
		setOptions(["Design","UX","Other"])
		return
	} else if (selection == 'author'){
		secondaryMenu.show()
		setOptions(["John","Taek","Pablo"])
		return
	} else if ($(secondaryMenu).is(":visible") ) {
		secondaryMenu.toggle()
		console.log("Sort by Date!")

		return
	}
});

var setOptions = function(arrayOfOptions){
	var secondaryMenu = document.querySelector("#secondary select")
	for (var i = arrayOfOptions.length - 1; i >= 0; i--) {
		option = new Option( arrayOfOptions[i],arrayOfOptions[i] );
		secondaryMenu.options[i] = option;

	};
}

// JS to show additional sort box

$('#secondary').change(function(e) {
	e.preventDefault()
	var selection = $('#secondary option:selected').val();
	console.log(selection)
});


$('.search').submit(function(e) {
	e.preventDefault()

	console.log("search submit")
});

});