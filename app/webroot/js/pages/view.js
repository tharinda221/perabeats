// JavaScript Document
$(document).ready(function(e) {
	
	$wh = $(window).height();
	$ww = $(window).width();
//	alert($wh);
	$('.inner_wrapper').css('width',$ww + 'px');
	$('.inner_wrapper').css('height',$wh + 'px');
	$('.wrapper').css('width',$ww  + 'px');
	$('.nav').css('width',$ww  + 'px');
	$('.uni_list').css('height',$wh - 60 + 'px');
	$('.content').css('min-height',$wh + 'px');
	
	$('.uni_sel').click(function(e) {
		
		if(parseInt($('.uni_list').css('right')) > - 100){
			$('.uni_list').animate({
				right: "-200px"	
			},300,"easeInOutQuint");
		}else{
			$('.uni_list').animate({
				right: "0px"	
			},300,"easeInOutQuint");
		}
	});
		
});