# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
`
 heroSizer = function() {
	var vPort = $( window ).height();
	var hSize = $('.fuwaHeader').height();
	var hero = vPort-(hSize*4.5);
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