
// autocolumn function
$(function(){
	$('#colwrapper h1').addClass('dontend');
	$('.wide').columnize({
		width : 300,
		height : 600
	});
	
// this to open the menu to the active item	
  initMenu();

	
// this for the opening panel fade in.
	$('#openingPanelQuestion').click(function(){
    $('#openingPanelAnswer').fadeIn('slow');	
    });

// this to fade in a case study and to scroll to place it near centre.
	$('.caseStudyLink').click(function(){
     var target_id = ("#" + $(this).attr("id")+"_target");
     $(target_id).fadeIn('slow');	
	 $('html, body').animate({
	    scrollLeft: ($(target_id).offset().left)-233 - 180
	 }, 1000);
    });

// this one to stop animation when manually scrolling
	$('body,html').bind('scroll mousedown DOMMouseScroll mousewheel keyup', function(e){
	 if ( e.which > 0 || e.type == "mousedown" || e.type == "mousewheel"){
	  $("html,body").stop();
	 }
	});


// this to scroll the What We Do menu item to the wide box closed
	$('#whatHeader').click(function(){
      if ($('div#firstDomain').length ) {
		 $('.home_sliding_box').animate({width:"hide"}, 0);
		 $('html, body').animate({
		    scrollLeft: ($("div#firstDomain").offset().left)-233
		  }, 1000);
	  } else {
		window.location.href = "what_we_do";
  	  }

    });

// this to open the What We Do menu list and scroll to pic and menu if it is What We Do page
    if ($('#firstDomain').length){
	  $('.menu_trigger').removeClass('active');
	  $('#what').slideDown('normal');
	  $('html, body').animate({
		   scrollLeft: ($("div#firstDomain").offset().left)-233
		   }, 2000);
    };

// localScroll initialisation
    $.localScroll.defaults.axis = 'x';
    $.localScroll({offset: (-233-180), easing: "easeOutBack", duration: 1000 });


// to open domain descriptions
  $('div.openIt').click(function(){
	$('.home_sliding_box').animate({width:"hide"}, 0);
    $(this).parent().next().animate({width: "show"}, 5000);
	$('html, body').animate({
	    scrollLeft: ($(this).offset().left)-233+180
	}, 1000);
	$("#what").slideDown('normal');
	var menuLine = $(this).parent().next().attr("id").split("domain")[1];
    $('.menu_trigger').removeClass('active');
	$('#'+menuLine).addClass('active');

  });

// to close domain descriptions
  $('div.closeIt').click(function(){
	$('.caseStudy').hide();
	$(this).closest('div.home_sliding_box').animate({width: "hide"}, 500);
	var menuLine = $(this).closest('div.home_sliding_box').attr("id").split("domain")[1];
	$('#'+menuLine).removeClass('active');
	$('html, body').animate({
	    scrollLeft: ($("div#firstDomain").offset().left)-233
	}, 1000);
  });

// to close case studies (fade rather than slide)
  $('div.caseStudyClose').click(function(){
	$('.caseStudy').fadeOut('slow');
  });

$('#menu li a').click(
  function() {
	  $('#menu li').removeClass('active');
	  $(this).parent().addClass('active');
	  initMenu();
    var checkElement = $(this).next();
    if(checkElement.is(':visible')) {
	    return false;
	  };
    if(!checkElement.is(':visible')) {
      $('#menu ul:visible').slideUp('normal');
      checkElement.slideDown('normal');
      return false;
    };
   });

// to do rollovers on splash page

$(".splashQuad").hover(
	 function()
	 {
	  this.src = this.src.replace("_off","_on");
	 },
	 function()
	 {
	  this.src = this.src.replace("_on","_off");
	 }
	);


});


// $('.mainNav').find('li.active').parent('ul').show();
// 
// $('.mainNav ul li.parent > a').bind('click', function() {
// 		if($(this).hasClass('active')) {
// 			return false;
// 		}
// 		else {
// 			$('.mainNav').find('.active').removeClass('active');
// 			$('.mainNav').find('.parent').children('ul').slideUp();
// 			$(this).toggleClass('active').siblings('ul').slideToggle();
// 			$(this).parent('li').toggleClass('active');
// 			return false;
// 		}


function initMenu() {
  $('#menu ul').hide();
  $('#menu').find('li.active').parent('ul').show();	
};


  $(document).ready(function () {


  $('a.viewExpand').bind('click', function(){
   	$("div#expandable").animate( { width: "show", height: "show" }, 1500 );
  ;});

  $('a.viewExpand2').bind('click', function(){
   	$("div#expandable2").fadeIn(2000);
  ;});


  $('a.closer').click(function() {
	$('div#expandable').fadeOut(1000);
  });


  $('#trigger_exp').bind('click', function(){
   	$("div#exp").slideToggle(1500);
  ;});


  $('.fuse').click(function(){
    var target_id = ("#" + $(this).attr("id")+"_target");
    $(target_id).animate({ width: "toggle" }, 750 );	
    $('html, body').animate({
	    scrollLeft: ($(target_id).offset().left)-233-180
	}, 1000);
	$("#what").slideDown('normal');
  });

  $('.menu_trigger').click(function(){
	$('.home_sliding_box').animate({width:"hide"}, 0);
  	var target_id = ("#domain" + $(this).attr("id"));
    $(target_id).animate({ width: "show" }, 0 );	
    $('html, body').animate({
	    scrollLeft: ($(target_id).offset().left)-233
	}, 1000);
  });


    /* Binding Events to the slides */
	$('.slide')
		.bind('open', function(){
			if(! $(this).hasClass('open')){
				$(this).next().trigger('open');
				$(this).addClass('open');
				$(this).animate({left: "-=1080px"});
			}
			else{
				$(this).prev().trigger('close');
			}
			$(this).siblings().removeClass('active');
			$(this).addClass('active');
		})
		.bind('close', function(){
			if($(this).hasClass('open')){
				$(this).removeClass('open');
				$(this).animate({left: "+=1080px"});
				$(this).prev().trigger('close');
			}
		});

	/* Triggering from the buttons */
	$('.slidebutton').click(function(){
		$(this).parent().trigger('open');
		$('#content-' + $(this).parent().attr('id')).trigger('show');
	});
	

  

	
	
	//   $('img[src*="header_"]').mouseover(function(){
	// var prefix = ($(this).attr("src").split('.png', 1));
	// var new_src = '<img src = '+prefix[0] + '_hover.png>';
	//     $(this).replaceWith(new_src);	
	//   });
	//   $('div.openIt img').hover(function(){
	// var prefix = ($(this).attr("src").split('.png', 1));
	// var new_src = '<img src = '+prefix[0] + '_hover.png>';
	// $(this).replaceWith(new_src)};
	// function(){
	//     
	//   });


  });
