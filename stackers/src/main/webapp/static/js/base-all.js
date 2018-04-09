
var PublicMethod = {
	/*密码可见与不可见*/
	changeInvisible : function (){
		if($('#invisible').hasClass('passw-invisible')){
			$('#invisible').removeClass('passw-invisible').addClass('passw-visible');
			document.getElementById("password").type = "text";
		} else {
			$('#invisible').removeClass('passw-visible').addClass('passw-invisible');
			document.getElementById("password").type = "password";
		}
	}
}
