# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
`
 heroSizer = function() {
	var vPort = $( window ).height();
	var hSize = $('.fuwaHeader').height();
	// var content = $('.dev_next:nth-child(0)').height();
	// console.log(content);
	var hero = vPort-(hSize*4.5);
	console.log(hero);
	$('.hero_banner').css({
		"height" : hero + "px"
	});
}


$( document ).ready(function() {
	heroSizer();
});

$( window ).resize(function() {
	heroSizer();
});
`