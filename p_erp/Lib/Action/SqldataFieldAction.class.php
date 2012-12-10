<?php
/*
 * 数据模块生成
 * 
 * 2012-11-28
 */
class SqldataFieldAction extends Action {

	
    public function index(){
		$html = $this->fetch();
		exit($html);
    }
	
	public function getlist(){
		
		$data = D('SqldataField')->select();
		
		exit(json_encode($data));
	}
	
	
	public function add(){
		$this->display();
	}
	
	public function adds(){
		
		$sqldata = D('SqldataField');
		if($sqldata->create()){
			if($sqldata->add()){
				$this->success('创建成功！');
			}else{
				$this->error('添加失败！');
			}
		}else{
			$this->error('添加失败！');
		}
	}
	
	public function edit(){
		$id = isset($_GET['id']) && !empty($_GET['id']) ? intval($_GET['id']) : 0;
		if($id == 0)
			$this->error('请选择数据表！');
		$data['data'] = D('SqldataField')->where('id='.$id)->find();
		$this->assign($data);
		$this->display();
	}
	
	public function edits(){
		$sqldata = D('SqldataField');
		if($sqldata->create()){
			if($sqldata->save()){
				$this->success('创建成功！');
			}else{
				$this->error('添加失败！');
			}
		}else{
			$this->error('添加失败！');
		}
	}
}