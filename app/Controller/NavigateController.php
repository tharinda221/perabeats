<?php

//require_once '../Controller/NewsController.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * This is used to navigate through
 * otherpages in the site
 *
 * @author Sandaruwan
 */
App::import('Controller', 'news');
App::import('Controller', 'bop');
class NavigateController extends AppController{
    
    var $pb_news_controller;
    var $pb_bop_controller;
    /**
     * 
     */
    public function index() {
        $this->pb_news_controller = new NewsController($this->request,$this->response);
     //   $this->pb_news_controller->constructClasses();
        $this->pb_bop_controller = new BopController($this->request, $this->response);
        
        $this->layout = "plain";
        $news = $this->pb_news_controller->find_news();
        $bop = $this->pb_bop_controller->latest();
        
        $this->set('news', $news);
        $this->set('bop', $bop);
        $this->set('css', array(
            'index.css',
            'font.css',
            'wrapper.css',
            'footer.css',
            'nav.css'
        ));
    }
    
    
}
