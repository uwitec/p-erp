<?php
/*
 * 数据模块生成
 * 
 * 2012-11-28
 */
class SqldataAction extends Action {

	
    public function index(){
		$html = $this->fetch();
		//dump($html);
		exit($html);
    }
	
	public function getlist(){
		
		$data = D('Sqldata')->select();
		
		exit(json_encode($data));
	}
	
	
	public function add(){
		$this->display();
	}
	
	public function adds(){
		
		$sqldata = D('Sqldata');
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
		$data['data'] = D('Sqldata')->where('id='.$id)->find();
		$this->assign($data);
		$this->display();
	}
	
	public function edits(){
		$sqldata = D('Sqldata');
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