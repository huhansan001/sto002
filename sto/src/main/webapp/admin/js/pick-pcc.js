$(function(){
		/*联动地址*/
	$(".pick-area4").pickArea({
		"format": "province/city/county", //格式
		"width": "315", //设置“省市县”文本边框的宽度
		"height": "40", //设置“省市县”文本边框的高度
		"borderColor": "#ededed;", //设置“省市县”文本边框的色值
		"arrowColor": "#ededed;", //设置下拉箭头颜色
		"listBdColor": "#ededed;", //设置下拉框父元素ul的border色值
		"color": "#ededed;", //设置“省市县”字体颜色
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

})
})
