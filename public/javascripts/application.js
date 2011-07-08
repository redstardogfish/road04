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
			$(this).animate({left: "-=1080px"});
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
			$(this).animate({left: "+=1080px"});
			$(this).next().trigger('close');
		}
	});


/* Triggering from the buttons */

	$('.slidebutton').click(function() {
	  var trig = $(this);
      $(this).parent().trigger('open');
	  $(this).scrollMenu();
	});

// Triggering from the menu
  $('.menu_trigger').click(function() {
	var target_id = '#slide-'+ $(this).attr('id')
	$('#slides').find(target_id).trigger('open');
	$(this).scrollMenu();
  });



});


$.fn.scrollMenu = function() {
	//all slides left of the open slide also have class 'open'. this was the easiest way to locate the proper opening place
    var open_slides = ($('#slides').find('.open').length)
	$('html,body').animate(
		{scrollLeft: (open_slides*180 - 180+21)},
		 300);
};



