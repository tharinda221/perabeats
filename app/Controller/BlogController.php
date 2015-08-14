<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BlogController
 *
 * @author Sandaruwan
 */
class BlogController extends AppController{
    /**
     * Main view of files
     */
    var $name = "blog";
    
    public function index() {
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
        $this->set('blogs', $this->blog->find('all'));
    }
    public function view($sid) {
        if(!isset($sid)){
            $this->redirect('/Blog');
        }
        
        $this->layout = "view";
        $blog_detail = $this->blog->findByBlogHash($sid);
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
        $this->set('blog', $blog_detail);
    }
}
