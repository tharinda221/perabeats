<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of NewsController
 *
 * @author Sandaruwan
 */
class NewsController extends AppController {

    //put your code here
    var $name = 'news';

    function index() {
        $this->layout = "view";
        $this->set('scripts', array(
            'pages/view.js'
        ));
        $this->set('css', array(
            'view.css',
            'font.css',
            'wrapper.css',
            'footer.css',
            'nav.css'
        ));
        $this->set('news', $this->news->find('all'));
    }

    function find_news() {

        return $this->news->find('all');
    }

    public function view($sid) {
        if(!isset($sid)){
            $this->redirect('/News');
        }
        
        $this->layout = "view";
        $news_detail = $this->news->findByNewsHash($sid);
        $this->set('scripts', array(
            'pages/view.js'
        ));
        $this->set('css', array(
            'single.css',
            'font.css',
            'wrapper.css',
            'footer.css',
            'nav.css'
        ));
        $this->set('news', $news_detail);
    }


}
