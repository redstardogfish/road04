$(function() {
	
  // menu open/close 
  $('.parent').click(function(){

		$(this).parent().parent().contents().find('ul.subnav').slideUp();
	    $(this).parent().children().slideDown();
	    
	
	
  });

});



