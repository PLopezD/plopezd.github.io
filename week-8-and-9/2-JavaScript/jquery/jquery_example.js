$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
// This code changes the backround of the site pink.
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
bodyElement = $('body')
bodyh1 = $('body h1')
 
$(".mascot h1").css({"color": "red", "border": "solid black 10px", "visibility": "hidden"})
$("body h1").html("September Bumblebees!!!")


//RELEASE 3: Event Handlers

  // $("img").hover(function(){
  //   $("img").attr('src', 'http://images4.fanpop.com/image/photos/23500000/Bumble-Bee-transformers-23564500-448-600.jpg');
  //   },function(){
  //   $("img").attr('src', 'http://images.thegovlab.org/wordpress/wp-content/uploads/2014/06/Dev-Bootcamp.png');
  // });
  
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://images4.fanpop.com/image/photos/23500000/Bumble-Bee-transformers-23564500-448-600.jpg')
  })
$('img').on('mouseout', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://images.thegovlab.org/wordpress/wp-content/uploads/2014/06/Dev-Bootcamp.png')
  })



//RELEASE 4 : Experiment on your own
  $("#btn1").click(function(){
    $("body h1").animate({fontSize:"3em"});
  });
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
