// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


app.init = function() {
	$('.mobileMenu').click(function() {
		if ($('table.headerTab').hasClass('reveal')) {
			$('table.headerTab').removeClass('reveal');
		} else {
			$('table.headerTab').addClass('reveal');
		}
	});

 /*	var loc = location.pathname,
	 intent = loc.lastIndexOf("/"),
	  count = "";

	  if (intent != 0 ) {
	  	count = countIndex(intent);
	  	loc = loc.slice(count);
	  	page = loc;
	  }

	 var countIndex = function(i) {
	 	var str = "";
	 	for (var c = 0 ; c <= i + 1 ; c++ ){
	 		str += c;
	 	}
	 	return str;
	 } */

}

app.init();