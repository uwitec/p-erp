<?php
/*
 * 静态内容生产模块
 * 页面静态化 
 * 2012-11-28
 */
class HtmlAction extends Action {
    public function index(){
		$this->display();
    }
	
	
	public function about(){
		$this->display();
	}
}