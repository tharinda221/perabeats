<div class="wrapper">
	<div class="nav">
        <div class="nav_sect_selected"><div class="logo"><a href="/">
<div class="lion"><img src="/img/pera_beats.jpg" width="30" height="30" alt=""/></div>PERA BEATS</a></div></div>
        <div class="nav_sect" style="border-left:none"><a href="../">NEWS</a></div>
        <div class="nav_sect">EVENTS</div>
        <div class="nav_sect">BLOG</div>
        <div class="nav_sect" style="border-right:2px solid #ffffff;">BEAT OF A PLAYER</div>
        <div class="uni_sel" ><div></div><div></div><div></div></div>
	</div>
    
    <div class="inner_wrapper">
        <div class="uni_list">
            <div class="uni_sect">UNIVERSITY OF PERADENIYA</div>
            <div class="uni_sect">UNIVERSITY OF COLOMBO</div>
            <div class="uni_sect">UNIVERSITY OF JAYAWARDANAPURA</div>
            <div class="uni_sect">UNIVERSITY OF SABARAGAMUWA</div>
        </div>
    </div>
</div>
<div class="wrapper">
	<div class="pseudo"></div>
	<div class="content">
    
    	<div class="right_panel">
        	<div class="feed_header">NEWS FEED</div>
            
        </div>
    	<div class="left_panel">
        	<div class="mid_header">NEWS</div>
            <div class="single_header">
            	 <div class="date"><div class="date_num"><?php echo date('d', strtotime($news['news']['news_date_added'])) ?></div>
              <div class="date_str"><?php echo date('M', strtotime($news['news']['news_date_added'])) ?></div>
              <div class="timed"><?php echo date('g:i a', strtotime($news['news']['news_date_added'])) ?></div></div>	
                <div class="single_topic"><?php echo $news['news']['news_topic'];  ?></div>
                <div class="single_by">BY <span><?php echo $news['log_user']['lg_fname'];  ?></span></div>
          </div>
            <div class="single_image"><img src="/perabeats/images/news/<?php echo $news['news']['news_main_img'];  ?>"  alt=""/></div>
   	  </div>
	</div>
    <div class="content">
    
    	<div class="left_panel">
        </div>
    	
	</div>
</div>
