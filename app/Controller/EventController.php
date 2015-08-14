<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of EventController
 *
 * @author Sandaruwan
 */
class EventController extends AppController{
    var $name = 'event';

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
        $this->set('event', $this->event->find('all'));
    }
    public function view($sid) {
        if(!isset($sid)){
            $this->redirect('/Event');
        }
        
        $this->layout = "view";
        $event_detail = $this->event->findByEventHash($sid);
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
        $this->set('event', $event_detail);
    }
}
