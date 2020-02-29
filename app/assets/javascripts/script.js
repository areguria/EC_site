$("document").ready(function(){
	$('.slide').skippr({
		transition: 'fade',
		speed: 1000,
		easing: 'easeOutQuart',
		navType: 'block',
		childrenElementType: 'div',
		arrows: true,
		autoPlay: true,
		autoPlayDuration: 5000,
		keyboardOnAlways: true,
		hidePrevious: false
	});
	$(".slide").skippr();
});