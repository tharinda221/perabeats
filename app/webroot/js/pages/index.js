// JavaScript Document
$(document).ready(function(e) {
	
	$wh = $(window).height();
	$ww = $(window).width();
//	alert($wh);
	$('.anm').css('width',$ww  + 'px');
	$('.wrapper').css('width',$ww  + 'px');
	$('.anm_img img').css('width',$ww  + 'px');	
	$('.nav').css('width',$ww  + 'px');
	$('.anm').css('height',$wh + 'px');
	$('.uni_list').css('height',$wh - 60 + 'px');
	$('.content').css('min-height',$wh + 'px');
	$('.pseudo').css('height',$wh +100 + 'px');
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
	
	/*
	$('.uni_sect').mouseover(function(e) {
        $('.uni_').animate({
			backgroundColor: "#ffffff",
          color: "#012644"
		},500);
    });
	$('.uni_sect').mouseover(function(e) {
        $('.uni_list').stop().animate({
			backgroundColor: "#012644",
         	 color: "#ffffff"
		},500);
    });*/
		
});