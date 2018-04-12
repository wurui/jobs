define([],function(){
  return {
    init:function($mod){
    	
    	$mod.on('click','.J_fav',function(e){
    		var 
    		tar=e.target,
    		_id=tar.getAttribute('data-id');
    		$mod.OXPost({
				$fav:{
					_id:_id
				}
				
			},function(){
				tar.innerHTML='已收藏'
			})
    	})
    	
    }
  }
})
