# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http: //coffeescript.org/

`
clubSizer = function() {
	var vPort = $( window ).height();
	var tSize = $( '.clubTitle' ).height();
	var hSize = $('.clubNav').height();
	var hero = vPort - (hSize*4.5 + tSize);
	var h = window.innerHeight;
	// console.log(h);
	// console.log( 'viewPort =  ' + vPort + '\r\n titleSize =  ' + tSize + '\r\n navSize =  ' + hSize + '\r\n heroSize =  ' + hero);
	$('.clubSlider, .sliderCell').css({
		"height" : hero + "px"
	});
	$( '.sliderMark' ).css({
		"top" : hero - 60 + "px"
	});
}


$( document ).ready(function() {
	var h = window.innerHeight;
	$( 'body' ).css({
		"height": h + "px"
	});
	clubSizer();
	
$(".clubSlider > div:gt(0)").hide();

setInterval(function() { 
  $('.clubSlider > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('.clubSlider');
},  9000);

});

$( window ).resize(function() {
	clubSizer();
});


`