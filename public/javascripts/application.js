$(function() {
	
  // menu open/close 
  $('.parent').click(function(){

		$(this).parent().parent().contents().find('ul.subnav').slideUp();
	    $(this).parent().children().slideDown();
  });


// accordion
/* Binding Events to the slides */
$('.slide')
	.bind('open', function(){
		if(! $(this).hasClass('open')){
			$(this).prev().trigger('open');
			$(this).addClass('open');
			$(this).animate({left: "-=540px"});
		}
		else{
			$(this).next().trigger('close');
		}
		$(this).siblings().removeClass('active');
		$(this).addClass('active');
	})
	.bind('close', function(){
		if($(this).hasClass('open')){
			$(this).removeClass('open');
			$(this).animate({left: "+=540px"});
			$(this).next().trigger('close');
		}
	});


/* Triggering from the buttons */
$('.slidebutton').click(function(){
	$(this).parent().trigger('open');
});



});



