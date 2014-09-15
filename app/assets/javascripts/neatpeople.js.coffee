# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http: //coffeescript.org/

`
/*
 * This function is used to size the above the fold content on load and resize to preserve performance. Also to maintian placement amung window sizes
 */

clubSizer = function() {
	var vPort = $( window ).height();
	var tSize = $( '.clubTitle' ).height();
	var hSize = $('.clubNav').height();
	var hero = vPort - (hSize*4.5 + tSize);
	
	$('.clubSlider, .sliderCell').css({
		"height" : hero + "px"
	});
	var mark =  (hSize * 6) + $( '.clubSlider' ).height();
	$( '.sliderMark' ).css({
		"top" : mark + "px"
	});
}

/*
 * This function is passed into interval declarations so the slideshow can be cleared and re instantiated as needed as a global function
 */

slideShow = function() { 
  $('.clubSlider > div:first')
  .removeClass('active')
    .fadeOut(1000)   
    .next()
    .fadeIn(1000)
    .addClass('active')
    .end()
    .appendTo('.clubSlider');
}

var startShow;

/*
 * This function calls all the placement when the dom is ready also sets the first slideshow
 */

$( document ).ready(function() {
	var h = window.innerHeight;
	$( 'body' ).css({
		"height": h + "px"
	});
	clubSizer();
	
$(".clubSlider > div:gt(0)").hide();
	startShow = setInterval( slideShow, 5000 );
});

/*
 * this calls the sizing and placement function
 */

$( window ).resize(function() {
	clubSizer();
});


/*
 * These functions handles the timeout and restart of the slideshow on watermark click
 */

$( '.mark.one' ).click(function() {
	clearInterval(startShow);
	// $(".clubSlider > div:gt(0)").hide();
	$( ".sliderCell.one, .sliderCell.two" ).fadeOut(1000)
	// .appendTo('.clubSlider');
	// $('.sliderCell.zero').fadeIn(1000)
    // .fadeOut(1000)
    // .next()
    // .fadeIn(1000)
    // .end()
    // .appendTo('.clubSlider');
    setTimeout(function(){
    // $('.sliderCell.zero').fadeOut(1000);
	startShow = setInterval( slideShow, 5000 )}, 2000);

});

$( '.mark.two' ).click(function() {
	clearInterval(startShow);
	// $(".clubSlider > div:gt(0)").hide();
	$( ".sliderCell.zero, .sliderCell.two" ).fadeOut(1000)
	// .appendTo('.clubSlider');
	$('.sliderCell.one').fadeIn(1000)
    // .fadeOut(1000)
    // .next()
    // .fadeIn(1000)
    // .end()
    .appendTo('.clubSlider');
    setTimeout(
	startShow = setInterval( slideShow, 5000 ), 2000);

});

$( '.mark.three' ).click(function() {
	clearInterval(startShow);
	// $(".clubSlider > div:gt(0)").hide();
	$( ".sliderCell.one, .sliderCell.zero" ).fadeOut(1000)
	// .appendTo('.clubSlider');
	$('.sliderCell.two').fadeIn(1000)
    // .fadeOut(1000)
    // .next()
    // .fadeIn(1000)
    // .end()
    .appendTo('.clubSlider');
    setTimeout(
	startShow = setInterval( slideShow, 5000 ), 2000);

});

/*
 * This is a keylogger just for fun, it will be removed
 */

var kkeys = [], dog = "68,79,71", mwac = "77,87,65,67" ;

$(document).keydown(function(e) {

  kkeys.push( e.keyCode );
  console.log(e.keyCode);

  if ( kkeys.toString().indexOf( mwac ) >= 0 ) {
    $(document).unbind('keydown',arguments.callee);
    
    window.location = './mwac';
    // do something awesome
    /*
    $("body").css({
    	"background": "#FFF"
    }); */
  
  }
  else if ( kkeys.toString().indexOf( dog ) >= 0 ) {
  	window.location = './dogclub';
  }

});

/*

<!--[if gte IE 8]>
<script type = "text/javascript">
$(".sRremrk").hoverIntent(function() {
       $("test", this).fadeTo(400, 1);
    }, function() {
       $("test", this).fadeTo(400, 0);
    });
</script>
<![endif]-->

*/




`