<?php
/*
 * 导航维护模块
 * 导航可添加 编辑 删除 排序 
 * 2012-11-28
 */
class NavAction extends Action {

    public function index(){
		$this->display();
    }
	
	
	public function about(){
		$this->display();
	}
}