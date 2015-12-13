﻿(function($) {

	"use strict"; // Start of use strict
	
	/* Titles Color */
	$('.intro_text, .simple_stat').each(function(){
		var color = $(this).attr('data-color');
		if (color){
			$(this).find('b').css('color', color);	
		}
	});

	/*RSVP Form*/
	$(".submit").on("click", function(){
		var type = $(this).parents('.form').attr('id');
		send_form(type);
		return false;
	});
	
	function send_form(type){
	
		var name = $("#"+type+" input#name").val();
		if (name == "") {
			$("#"+type+" input#name").css({border:"2px solid red"});
			$("#"+type+" input#name").focus();
			return false;
		}
		var surname = $("#"+type+" input#surname").val();
		if (surname == "") {
			$("#"+type+" input#surname").css({border:"2px solid red"});
			$("#"+type+" input#surname").focus();
			return false;
		}
		var email = $("#"+type+" input#email").val();
		if (email == "") {
			$("#"+type+" input#email").css({border:"2px solid red"});
			$("#"+type+" input#email").focus();
			return false;
		}
		var city = $("#"+type+" input#city").val();
		var country = $("#"+type+" input#country").val();
		var phone = $("#"+type+" input#phone").val();
		var guest = $("#"+type+" input#guest").val();
		var attending = $("#"+type+" input#attending").val();
		var arrival = $("#"+type+" input#arrival").val();
		var departure = $("#"+type+" input#departure").val();
		var adult = $("#"+type+" select#adult").val();
		var child = $("#"+type+" select#child").val();
		var coupon = $("#"+type+" input#coupon").val();
		var date = $("#"+type+" input#date").val();
		var time = $("#"+type+" input#time").val();
		var coupon = $("#"+type+" input#coupon").val();
		var message = $("#"+type+" textarea#message").val();
	
	if(type == "write_us") {
		var dataString = '&name=' + name +'&surname=' + surname + '&email=' + email + '&city=' + city 
		+ '&country=' + country + '&phone=' + phone + '&message=' + message;
	}
	if(type == "booknow") {
		var dataString = '&arrival=' + arrival +'&departure=' + departure + '&adult=' + adult + '&child=' + child 
		+ '&coupon=' + coupon;
	}
	if(type == "bookcafe") {
		var dataString = '&date=' + date +'&name=' + name + '&time=' + time + '&phone=' + phone;
	}	
	if(type == "rsvp") {
		var dataString = '&name=' + name +'&guest=' + guest + '&email=' + email + '&attending=' + attending;
	}		
	
	var form = $(this);
	var str = form.serialize(); 
	$.ajax({
		method: "POST",
		url: "http://formspree.io/rodalermakov@gmail.com",
		data: dataString,
		dataType: "json",
		success: function() {
			$("#"+type).html("<div id='form_send_message'>Thank you for your request, we will contact you as soon as possible.</div>", 1500);	
		}
	});

	}

	/* Section Background */
	$('.image_bck').each(function(){
		var image = $(this).attr('data-image');
		var gradient = $(this).attr('data-gradient');
		var color = $(this).attr('data-color');
		var blend = $(this).attr('data-blend');
		var opacity = $(this).attr('data-opacity');
		var position = $(this).attr('data-position');
		if (image){
			$(this).css('background-image', 'url('+image+')');	
		}
		if (gradient){
			$(this).css('background-image', gradient);	
		}
		if (color){
			$(this).css('background-color', color);	
		}
		if (blend){
			$(this).css('background-blend-mode', blend);	
		}
		if (position){
			$(this).css('background-position', position);	
		}
		if (opacity){
			$(this).css('opacity', opacity);	
		}
	});

	/* Bootstrap */
	$('[data-toggle="tooltip"]').tooltip();
	$('[data-toggle="popover"]').popover();
	
	/* Over */
	$('.over, .head_bck').each(function(){
		var color = $(this).attr('data-color');
		var image = $(this).attr('data-image');
		var opacity = $(this).attr('data-opacity');
		var blend = $(this).attr('data-blend');
		if (color){
			$(this).css('background-color', color);	
		}
		if (image){
			$(this).css('background-image', 'url('+image+')');	
		}
		if (opacity){
			$(this).css('opacity', opacity);	
		}
		if (blend){
			$(this).css('mix-blend-mode', blend);	
		}
	});

	/*Increase-Decrease*/
    $('.increase-qty').on("click", function(e){
    	var qtya = $(this).parents('.add-to-cart').find('.qty').val();
    	var qtyb = qtya * 1 + 1;
    	$(this).parents('.add-to-cart').find('#qty').val(qtyb);
		e.preventDefault();
	});
	$('.decrease-qty').on("click", function(e){
    	var qtya = $(this).parents('.add-to-cart').find('#qty').val();
    	var qtyb = qtya * 1 - 1;
    	if (qtyb < 1) {
            qtyb = 1;
        }
    	$(this).parents('.add-to-cart').find('#qty').val(qtyb);
		e.preventDefault();
	});

	

	/*Sub Menu*/
	$('.sub_cont li').on({
		mouseenter:function(){
			$(this).find('.mega_menu').stop().slideDown('fast');
		},
		mouseleave:function(){
			$(this).find('.mega_menu').stop().slideUp('fast');
		}
	});


	$(window).resize(function() {
	    if ($(window).width() > 992) {
			$('.row').each(function(){
				setEqualHeight($(this).find('.bordered_block:not(".col-md-12")'));
				setEqualHeight($(this).find('.block'));
			});
		}
		$('.row').each(function(){
				setEqualHeight($(this).find('.bordered_block:not(".col-md-12")'));
				setEqualHeight($(this).find('.block'));
			});
		$('.mid_wrapper').each(function(){
			setEqualHeight($(this).find('.owl-item'));
		});
		if($(".intro_wrapper").length) {
			$('.intro_wrapper').data('owlCarousel').reinit();
		}
	});

	$( ".date_arrival, .date_departure" ).datepicker();


	/*Wow*/
	new WOW(
		{
	      boxClass:'wow', animateClass: 'animated', offset:0, mobile:true, live:true       
	    }
		).init();
	
	/*Gallery Lightbox*/
	$('.lightbox').magnificPopup({ 
	  type: 'image',
	  gallery:{
	    enabled:true
	  }
	});
	$('.video').magnificPopup({
	  type: 'iframe',
	  iframe: {
		  markup: '<div class="mfp-iframe-scaler">'+
		            '<div class="mfp-close"></div>'+
		            '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
		          '</div>', // HTML markup of popup, `mfp-close` will be replaced by the close button

		  patterns: {
		    youtube: {
		      index: 'youtube.com/', // String that detects type of video (in this case YouTube). Simply via url.indexOf(index).

		      id: 'v=', // String that splits URL in a two parts, second part should be %id%
		      // Or null - full URL will be returned
		      // Or a function that should return %id%, for example:
		      // id: function(url) { return 'parsed id'; } 

		      src: 'http://www.youtube.com/embed/%id%?autoplay=1' // URL that will be set as a source for iframe. 
		    },
		    vimeo: {
		      index: 'vimeo.com/',
		      id: '/',
		      src: 'http://player.vimeo.com/video/%id%?autoplay=1'
		    },
		    gmaps: {
		      index: '//maps.google.',
		      src: '%id%&output=embed'
		    }

		    // you may add here more sources

		  },

		  srcAction: 'iframe_src', // Templating object key. First part defines CSS selector, second attribute. "iframe_src" means: find "iframe" and set attribute "src".
		}  
	  
	});
	
	/* Lettering */
	$("header .logo a b").lettering();
	$("header .logo span").each(function(){
	 	var min = 0;
	 	var max = 50;
	 	var randomNumber = Math.floor(Math.random()*(max-min+1)+min);
	 	$(this).css('transition-delay', '0.'+randomNumber+'s');
	 });

	/* Anchor Scroll */
	$(window).scroll(function(){
		if ($(window).scrollTop() > 100) {
			$(".logo a").trigger('mouseenter');
			$('body').addClass('open');
			
		}
		else {
			$('body').removeClass('open');
			$(".logo a").trigger('mouseover');
			$('.sub_menu a').removeClass('active')
		}
	});

	/* Menu */
	$('.main_menu').on("click", function(e){
		$(this).parents('header').toggleClass('tm');	
	});

	/* Top Menu Click to Section */
	$('.sub_menu').find('a').on("click", function(e){
		$('.sub_menu').find('a').removeClass('active');
		$(this).addClass('active');
		var anchor = $(this);
		if($(this).parents('header').hasClass('white_bck')){
			$('html, body').stop().animate({
				scrollTop: $(anchor.attr('href')).offset().top-58
			}, 1000);
		}else if($(this).parents('header').hasClass('blck_bck')){
			$('html, body').stop().animate({
				scrollTop: $(anchor.attr('href')).offset().top-58
			}, 1000);
		}else{
			$('html, body').stop().animate({
				scrollTop: $(anchor.attr('href')).offset().top
			}, 1000);
		}
		e.preventDefault();
		$(".main_menu").trigger('click');
	});

	/* Search Hover */
	$('.search_btn').on({
		mouseenter:function(){
			$(this).find('.se_cont').toggleClass('active');
		},mouseleave:function(){
			$(this).find('.se_cont').toggleClass('active');
		}
	});

	/* Btns Hover */
	$('.basket_btn').on({
		mouseenter:function(){
			$(this).find('.bask_cont').toggleClass('active');
		},mouseleave:function(){
			$(this).find('.bask_cont').toggleClass('active');
		}
	});
	 

	/*Scroll Effect*/
	$('.intro_down, .go').on("click", function(e){
		var anchor = $(this);
		$('html, body').stop().animate({
			scrollTop: $(anchor.attr('href')).offset().top
		}, 300);
		e.preventDefault();
	});

	/*OWL Carousel in Intro*/
	$(".intro_wrapper").owlCarousel({
 		navigation : true, responsive: true, responsiveRefreshRate : 200, responsiveBaseElement:window, slideSpeed : 200, addClassActive:true,
		paginationSpeed : 200, rewindSpeed : 200, singleItem:true, autoPlay : true, transitionStyle:"fade",
	    afterAction : function(elem){
	      $('.active .tlt').textillate('start')
	    },
		navigationText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
	});
	$(".mac_wrapper").owlCarousel({
 		navigation : true, responsive: true, responsiveRefreshRate : 200, responsiveBaseElement:window, slideSpeed : 200, addClassActive:true,
		paginationSpeed : 200, rewindSpeed : 200, singleItem:true, autoPlay : true, transitionStyle:"fade",
		navigationText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
	});
	$(".mid_wrapper").owlCarousel({
 		navigation : true, responsive: true, responsiveRefreshRate : 200, responsiveBaseElement:window, slideSpeed : 200, addClassActive:true,
		paginationSpeed : 200, rewindSpeed : 200,  autoPlay : true, transitionStyle:"fade", items:3, 
		 itemsMobile : [479,1], itemsTablet: [768,2], itemsDesktopSmall : [1024,2],
		navigationText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
	});

	$(".film_wrapper").owlCarousel({
 		navigation : true, responsive: true, responsiveRefreshRate : 200, responsiveBaseElement:window, slideSpeed : 200, addClassActive:true,
		paginationSpeed : 200, rewindSpeed : 200,  autoPlay : true, transitionStyle:"fade", items:6, 
		navigationText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
	});

	$(".mid_wrapper_two").owlCarousel({
 		navigation : true, responsive: true, responsiveRefreshRate : 200, responsiveBaseElement:window, slideSpeed : 200, addClassActive:true,
		paginationSpeed : 200, rewindSpeed : 200, autoPlay : true, transitionStyle:"fade", items:2, 
		 itemsMobile : [479,1], itemsTablet: [768,2], itemsDesktopSmall : [1024,2],
		navigationText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
	});
	/*OWL Carousel in Partners*/
	$(".partners_wrapper").owlCarousel({
 		navigation : true, responsive: true, responsiveRefreshRate : 200, slideSpeed : 200, paginationSpeed : 200, rewindSpeed : 500,
		addClassActive : true, navigationText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
	});


	

	/*Tabs*/
	$('.tabs .tabs-ul a').on("click", function(e){
		var link = $(this).attr('href');
		$(this).parents('.tabs').find('.tabs-ul li').removeClass('active');
		$(this).parents('li').addClass('active');
		$(this).parents('.tabs').find('.tab-pane').removeClass('active in');
		$(this).parents('.tabs').find(link).addClass('active in');
		e.preventDefault();
	});

	/*Progress Bars*/
	$('.progress-bar').each(function(){
		var percent = $(this).attr('aria-valuenow');
		var color= $(this).attr('data-color');
		$(this).css('width',percent+'%');
		$(this).css('background-color',color);
	});

	
	/* Countdown */
	$('.countdown').each(function(){
		var year = $(this).attr('data-year');
		var month = $(this).attr('data-month');
		var day = $(this).attr('data-day');
		$(this).countdown({until: new Date(year,month-1,day)});

	});

	/*Price Filter*/
	$('#price-filter').slider({
        range: true,
        min: 0,
        max: 999,
        values: [100, 700],
        slide: function(event, ui)
        {
            $('#price-filter-value-1').text(ui.values[0]);
            $('#price-filter-value-2').text(ui.values[1]);
            var min = ui.values[0] / 999 * 90;
            var max = ui.values[1] / 999 * 90;
            $('.min-filter').css('left', min + '%');
            $('.max-filter').css('left', max + '%');
        }
    });

   
	
	

	if ($(window).width() > 992) {
		$('.row').each(function(){
			setEqualHeight($(this).find('.bordered_block:not(".col-md-12")'));
			setEqualHeight($(this).find('.block:not(".col-md-12")'));
		});
	}

    
	
})(jQuery);


$(window).load(function(){

	/*Masonry*/
	$('.masonry').masonry({
		itemSelector: '.masonry-item',
	});

	if ($(window).width() > 992) {
		/* Autoheight Init */
		$('.mid_wrapper').each(function(){
			setEqualHeight($(this).find('.owl-item'));
		});
	}
	$('.mid_wrapper').each(function(){
		setEqualHeight($(this).find('.owl-item'));
	});
	
});

 /*Boxes AutoHeight*/
function setEqualHeight(columns)
{
	var tallestcolumn = 0;
	columns.each(
		function()
		{
			var currentHeight = $(this).height();
			if(currentHeight > tallestcolumn)
				{
				tallestcolumn = currentHeight;
				}
		}
	);
columns.height(tallestcolumn);
}

function sendMail() {
    var name = escape(document.getElementById('name').value);
    var surname = escape(document.getElementById('surname').value);
    var typeApp = escape(document.getElementById('typeApp').value);
    var time = escape(document.getElementById('time').value);
    var typeHours = escape(document.getElementById('typeHours').value);
    var email = escape(document.getElementById('email').value);
    var phone = escape(document.getElementById('phone').value);
    var message = escape(document.getElementById('message').value);
    var line = "\n";

    var body = "Name: " + name + line + "SurName: "+ surname + line + "Type of Appointment: "+ typeApp + line
             + "Time: "+ time + line + typeHours + line + "Email: "+ email + line + "Phone: "+ phone + line + "Description: "+ message + line;

    var str = 'http://mail.google.com/mail/?view=cm&fs=1' +
              '&to=' + "youngbeautifulsalonspa@gmail.com" +
              '&su=' + "Book Online" +
              '&body=' + body.replace(/\n/g, '%0A') +
              '&ui=1';
    location.href = str;
}