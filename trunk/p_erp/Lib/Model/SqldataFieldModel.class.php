<?php

class SqldataFieldModel extends Model{
	protected $_auto = array ( 

		array('ctime', "getData", 2, 'function'),
		array('mtime', "getData", 3, 'function')
	);
	
}

function getData(){
	return date('Y-m-d H:i:s');
}
?>