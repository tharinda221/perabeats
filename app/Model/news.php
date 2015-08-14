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
    public $hasOne = 'log_user';
}
