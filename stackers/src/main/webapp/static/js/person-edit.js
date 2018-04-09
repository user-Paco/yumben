$(function(){
	/*时间控件*/
	$("#birthDate").mobiscroll().date({  
		theme: "android-ics light",  
		lang: "zh",  
		cancelText: null,  
		dateFormat: 'yy-mm-dd',
		display: 'bottom'
	});
	

	
})
//选择省市
	var city_picker1 = new mui.PopPicker({layer:2});
	city_picker1.setData(init_city_picker);
	$("#chooseArea").on("tap", function(){
		setTimeout(function(){
			city_picker1.show(function(items){
				$("#cityAreaSpan").html((items[0] || {}).text + " " + (items[1] || {}).text);
				$("#cityArea").val((items[0] || {}).text + " " + (items[1] || {}).text);
			});
		},200);
});

//选择学历
	var city_picker2 = new mui.PopPicker({layer:1});
	city_picker2.setData(init_education_picker);
	$("#eduction-choose").on("tap", function(){
		setTimeout(function(){
			city_picker2.show(function(items){
				$("#eduction").val((items[0] || {}).value);
				$("#eduction-choose").html((items[0] || {}).text);
			});
		},200);
	});
function funSexMan(){
	$("#man").click();
	$("#sex-a-man").addClass("sex-a-man").removeClass("sex-a-man-gray");
	$("#sex-a-woman").addClass("sex-a-woman-gray").removeClass("sex-a-woman");
	console.log("输出选择："+$('input:radio[name=sex]:checked').val())
}

function funSexWoman(){
	$("#woman").click();
	$("#sex-a-woman").addClass("sex-a-woman").removeClass("sex-a-woman-gray");
	$("#sex-a-man").addClass("sex-a-man-gray").removeClass("sex-a-man");
}
