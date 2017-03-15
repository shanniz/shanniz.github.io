/*
	Epilogue by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
*/

(function($) {

	skel.breakpoints({
		xlarge: '(max-width: 1680px)',
		large: '(max-width: 1280px)',
		medium: '(max-width: 980px)',
		small: '(max-width: 736px)',
		xsmall: '(max-width: 480px)',
		xxsmall: '(max-width: 360px)'
	});

	$(function() {

		var	$window = $(window),
			$body = $('body');

		// Disable animations/transitions until the page has loaded.
			$body.addClass('is-loading');

			$window.on('load', function() {
				window.setTimeout(function() {
					$body.removeClass('is-loading');
				}, 100);
			});

		// Fix: Placeholder polyfill.
			$('form').placeholder();

		// Prioritize "important" elements on medium.
			skel.on('+medium -medium', function() {
				$.prioritize(
					'.important\\28 medium\\29',
					skel.breakpoint('medium').active
				);
			});

		// Items.
			$('.item').each(function() {

				var $this = $(this),
					$header = $this.find('header'),
					$a = $header.find('a'),
					$img = $header.find('img');

				// Set background.
					$a.css('background-image', 'url(' + $img.attr('src') + ')');

				// Remove original image.
					$img.remove();

			});

	});

})(jQuery);

$(document).ready(function() {

	var calcTimeDiff = function(){
		var t1 = new Date(1991, 01, 18, 0, 0, 0, 0);
			var t2 = new Date();
			var diff = Math.abs(t2.getTime() - t1.getTime());
			var seconds_from_T1_to_T2 = diff / 1000;
			var hours_from_T1_to_T2 = seconds_from_T1_to_T2/3600;
			return (hours_from_T1_to_T2);
	}

	var calcCurrentDistance = function(){
		var hrs = calcTimeDiff();
		document.getElementById('earth_dist').innerHTML = hrs * 43000;
	}
	

	setInterval(calcCurrentDistance, 1000);

	turnRipples = function(){
		/*Ripples Effects**/
		$('#header').ripples({
			resolution: 128,
		dropRadius: 10, //px
		perturbance: 0.08,
		interactive: true
	});
	}
	console.log('doc ready');
	$('#btnToggleRipples').on('click', function() {
		$('#header').ripples('pause');
	});
});
