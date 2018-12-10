/*联动地址*/
$(function(){
		$(".pick-area4").pickArea({
		"format": "province/city/county", //格式
		"width": "312", //设置“省市县”文本边框的宽度
		"height": "50", //设置“省市县”文本边框的高度
		"borderColor": "#A1AA1;", //设置“省市县”文本边框的色值
		"arrowColor": "#A1AA1;", //设置下拉箭头颜色
		"listBdColor": "#A1AA1;", //设置下拉框父元素ul的border色值
		"color": "#A1AA1;", //设置“省市县”字体颜色
		"fontSize": "15px", //设置字体大小
		"hoverColor": "#435abd",
		"paddingLeft": "8px", //设置“省”位置处的span相较于边框的距离
		"arrowRight": "10px", //设置下拉箭头距离边框右侧的距离
		"maxHeight": "300px",
		//"preSet":"",//数据初始化 ；这里的数据初始化有两种方式，第一种是用preSet属性设置，第二种是在a标签里使用name属性设置
		"getVal": function() { //这个方法是每次选中一个省、市或者县之后，执行的方法
			var thisdom = $("." + $(".pick-area-dom").val()); //返回的是调用这个插件的元素pick-area，$(".pick-area-dom").val()的值是该元素的另一个class名，这个class名在dom结构中是唯一的，不会有重复，可以通过这个class名来识别这个pick-area
			thisdom.next().val($(".pick-area-hidden").val()); //$(".pick-area-hidden").val()是页面中隐藏域的值，存放着每次选中一个省、市或者县的时候，当前文本存放的省市县的最新值，每点击一次下拉框里的li，这个值就会立即更新
		}
	});
	/*日期*/
	$('.datetimepicker8').datetimepicker({
		onGenerate: function(ct) {
			$(this).find('.xdsoft_date')
				.toggleClass('xdsoft_disabled');
		},
		minDate: '-1970/01/2',
		maxDate: '+1970/01/2',
		timepicker: false
	});
	/*日期*/
	$('.datetimepicker1').datetimepicker({
		datepicker: false,
		format: 'H:i',
		step: 5
	});
})

/*价格计算js*/
function chaxun_an_001(){
	var tempMoneyIP = 0;//申明变量用于表示距离所产生的基本价格
	var tempMoneyKG = 2//申明变量用于表示重量所产生的附增价格
	var tempipOpen = $("#IP_dizhi_001").val();//申明变量拿到出发省市区
	var ipOpenAr = tempipOpen.split(" ");//截取出发省市区得到其数组
	var tempipClose = $("#IP_dizhi_002").val();//申明变量拿到目的地的省市区
	var ipCloseAr = tempipClose.split(" ");//截取目的地的省市区 得到其相应的数组
	var kgValue = $("#kg_input_01").val();//得到输入的重量
	var dateTime = $("#dateTime").val();//得到输入的寄出时间
	
	var temp1 = dateTime.split("/");
	var temp2 = temp1[2].split(" ");
	
	/*判断开始地址和目的地是否一致*/
	if(ipOpenAr[0]==ipCloseAr[0]){
		var temp3 = temp2[0]-0+1;
		$("#dateTimeShow").text(temp1[0]+"/"+temp1[1]+"/"+temp3+" "+temp2[1]);
		tempMoneyIP = 8;
	}else{
		var temp3 = temp2[0]-0+3;
		$("#dateTimeShow").text(temp1[0]+"/"+temp1[1]+"/"+temp3+" "+temp2[1]);
		tempMoneyIP = 15;
	}
	var money = tempMoneyIP+tempMoneyKG*kgValue;
	$("#cankaojiage").text(money+"元");
}

//在线下单
function zaixianxiadan_an(){
	/*还要判断cookie是否存在值*/
	window.location.href="";//发送到登录界面
}
