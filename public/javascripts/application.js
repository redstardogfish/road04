$(function() {
	
  // menu open/close 
  $('.parent').click(function(){

		$(this).parent().parent().contents().find('ul.subnav').slideUp();
	    $(this).parent().children().slideDown();
  });

  $('.what_we_do').parent().children('ul').slideDown();

// accordion
/* Binding Events to the slides */
$('.slide')
	.bind('open', function(){
		if(! $(this).hasClass('open')){
			$(this).prev().trigger('open');
			$(this).addClass('open');
			$(this).animate({left: "-=1080px"}, 1000);
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
			$(this).animate({left: "+=1080px"}, 1000);
			$(this).next().trigger('close');
		}
	});


/* Triggering from the buttons */

	$('.slidebutton').click(function() {
      if($(this).parent().hasClass('active')){
		$('#slide-7').trigger('open');
		$('.menu_trigger').parent().removeClass('active');
		$('html,body').animate({scrollLeft: 0},2000);
      }
      else {
	     var menu_id = "#"+$(this).attr('id').substr(0,1);
	     $('.menu_trigger').parent().removeClass('active');
	     $(menu_id).parent().addClass('active');
	     $(this).parent().trigger('open');
		 $(this).scrollMenu();	
      };

	});

// Triggering from the menu
  $('.menu_trigger').click(function() {
	var target_id = '#slide-'+ $(this).attr('id')
	$('#slides').find(target_id).trigger('open');
	$('.menu_trigger').parent().removeClass('active');
	$(this).parent().addClass('active');
	$(this).scrollMenu();
  });



});


$.fn.scrollMenu = function() {
	//all slides left of the open slide also have class 'open'. this was the easiest way to locate the proper opening place
    var open_slides = ($('#slides').find('.open').length)
	$('html,body').animate(
		{scrollLeft: (open_slides*180 )},
		 1000);
};



