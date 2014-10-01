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

// slideShow = function() { 
//   $('.clubSlider > div:first')
//   .removeClass('active')
//     .fadeOut(1000)   
//     .next()
//     .fadeIn(1000)
//     .addClass('active')
//     .end()
//     .appendTo('.clubSlider');
// }

otherShow = function() {
	$('.picture-scroll > section:first')
  .removeClass('active')
    .fadeOut(1000)   
    .next()
    .fadeIn(1000)
    .addClass('active')
    .end()
    .appendTo('.picture-scroll');
}

var startShow, 
    mwacShow;

/*
 * This function calls all the placement when the dom is ready also sets the first slideshow
 */

$( document ).ready(function() {
	var h = window.innerHeight;
	$( 'body' ).css({
		"height": h + "px"
	});
	clubSizer();
	
// $(".clubSlider > div:gt(0)").hide();
// 	startShow = setInterval( slideShow, 5000 );
// 	mwacShow = setInterval( otherShow, 5000)
});

/*
 * this calls the sizing and placement function
 */

$( window ).resize(function() {
	clubSizer();
});

/*
 * Array for names of watermark clicks, those functions have all we need for the slideshow so we will just trigger those events on a timer instead of duplicating functions  
 */
var  mark = ['one', 'two', 'three'],
      loc = 0;

/*
 * We will set a global function to be reused as a timer
 */

slideshow = function() {
    var cell = mark[loc];
    $('.mark.' + cell).click();
    if (loc == 2) {
      loc = 0;
    } else {
      loc++;
    }
}
/*
 * Start the first timer
 */
$(function() {
  startShow = setInterval(function(){
    slideshow();
  },1000);
});

/*
 * These functions handles the timeout and restart of the slideshow on watermark click
 */

$( '.mark.one' ).click(function() {
  if ($('.sliderCell.zero').hasClass('active')) {
    // do nothing
  } else {
    $('.sliderCell.one, .sliderCell.two').css({
      "z-index":"20"
    });
     $('.sliderCell.zero').css({
      "z-index":"50"
    });
    $('.sliderCell.zero, .mark.one').addClass('active');
    $('.mark.two, .mark.three').removeClass('active');
    $('.sliderCell.zero').removeClass('inactive');
    setTimeout(function(){
      $('.sliderCell.one, .sliderCell.two').addClass('inactive');
      $('.sliderCell.one, .sliderCell.two').removeClass('active');
    },2000);
    clearInterval(startShow);
    loc = 0;
    startShow = setInterval(function(){
    slideshow();
  },9000);
  }
});
$( '.mark.two' ).click(function() {
	if ($('.sliderCell.one').hasClass('active')) {
    // do nothing
  } else {
      $('.sliderCell.zero, .sliderCell.two').css({
        "z-index":"20"
      });
      $('.sliderCell.one').css({
        "z-index":"50"
      });
      $('.sliderCell.one, .mark.two').addClass('active');
      $('.mark.one, .mark.three').removeClass('active');
      $('.sliderCell.one').removeClass('inactive');
      setTimeout(function(){
        $('.sliderCell.zero, .sliderCell.two').addClass('inactive');
        $('.sliderCell.zero, .sliderCell.two').removeClass('active');
      },2000);
      clearInterval(startShow);
        loc = 1;
        startShow = setInterval(function(){
        slideshow();
      },9000);
    }
});
$( '.mark.three' ).click(function() {
	if ($('.sliderCell.two').hasClass('active')) {
    // do nothing
  } else {
    $('.sliderCell.zero, .sliderCell.one').css({
      "z-index":"20"
    });
     $('.sliderCell.two').css({
      "z-index":"50"
    });
    $('.sliderCell.two, .mark.three').addClass('active');
    $('.mark.one, .mark.two').removeClass('active');
    $('.sliderCell.two').removeClass('inactive');
    setTimeout(function(){
      $('.sliderCell.zero, .sliderCell.one').addClass('inactive');
      $('.sliderCell.zero, .sliderCell.one').removeClass('active');
    },2000);
    clearInterval(startShow);
    loc = 2;
    startShow = setInterval(function(){
    slideshow();
  },9000);
  }
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