
function loginUSer(){
	  //询问框
    layer.open({
    content: '账号或者密码错误，请重新输入'
    ,btn: ['忘记密码', '重新输入']
    ,yes: function(index){
      location.reload();
      layer.close(index);
    },
    no :function(index) {
    	
    	layer.close(index);
    }
  });
}
