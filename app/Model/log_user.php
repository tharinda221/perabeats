<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Log user
 *
 * @author Sandaruwan
 */
class log_user extends AppModel{
    //put your code here
    var $name = 'log_user';
	 public $primaryKey = 'lg_id';
    public $useTable = 'log_user';
	
	public $hasMany = array(
        'news' => array(
            'className' => 'news',
        )
    );
    
    
}
