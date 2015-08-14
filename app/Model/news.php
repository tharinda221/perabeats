<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of news
 *
 * @author Sandaruwan
 */
class news extends AppModel{
    //put your code here
    var $name = 'news';
	public $primaryKey = 'news_id';
    public $useTable = 'news';
	public $belongsTo = array(
        'log_user' => array(
            'className' => 'log_user',
            'foreignKey' => 'pb_log_user_lg_id'
        )
    );
  
  /*  public $hasMany = array(
        'log_user' => array(
            'className' => 'log_user',
        )
    );*/
}
