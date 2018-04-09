
$(function(){
	
	//适配
	$('html').screenAdaptation();

})

//扩展jq.fn
$.extend($.fn, {
	//屏幕适配 ***
	screenAdaptation : function(){
		var that = $(this);
		var iWidth = document.documentElement.getBoundingClientRect().width;
		iWidth=iWidth>640?640:iWidth;
		iWidth=iWidth<320?320:iWidth;
		that[0].style.fontSize=iWidth/6.4+"px";
	}

});
