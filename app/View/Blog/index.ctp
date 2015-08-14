<div class="wrapper">
    <div class="nav">
        <div class="nav_sect_selected"><div class="logo"><a href="/perabeats/">
<div class="lion"><img src="/img/pera_beats.jpg" width="30" height="30" alt=""/></div>PERA BEATS</a></div></div>
        <div class="nav_sect" style="border-left:none"><a href="./News">NEWS</a></div>
        <div class="nav_sect"><a href="./Event">EVENTS</a></div>
        <div class="nav_sect"><a href="../Blog">BLOG</a></div>
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

        <div class="left_panel">BLOG
        </div>
        <div class="right_panel">
            <div class="mid_header">NEWS</div>
            <?php foreach ($blogs as $blog): ?>
  
        <p><?php echo "<a href=\"view/".$blog['blog']['blog_hash']."\">".$blog['blog']['blog_id']." ".$blog['blog']['blog_topic'] ; ?></a></p>
 
    <?php endforeach; ?>
        </div>
    </div>
    <div class="content">

        <div class="left_panel">Blog
        </div>
        <div class="right_panel">
            <div class="mid_header">NEWS</div>
        </div>
    </div>
</div>