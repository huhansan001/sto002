$(function() {
	
	
	/*时间年月日*/
	laydate.render({
		  elem: '#date1'
		  ,format: 'yyyy年MM月dd日'
		});
		laydate.render({
		  elem: '#timebegin,#timeend'
		  ,type: 'time'
		});
		
	/*联动地址*/
	$(".pick-area4").pickArea({
		"format": "province/city/county", //格式
		"width": "320", //设置“省市县”文本边框的宽度
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
	});
	/*寄件人*/
	$(".btn_Addressee").click(function() {
		showBg();
		// $("body").css({overflow:"hidden"});    //禁用滚动条
		$(".Addressee").css("display", "block");
		$(".Addressee").animate({
			width: "770px",
			height: "480px",
		}, 700);
		$(".layui-layer-title").animate({
			width: "770px",
		}, 700,function(){
			$(".close").css("margin-left", "655px")
		});
		$(".close").animate({
			
		}, 700);

	});
	//显示灰色 jQuery 遮罩层 
	function showBg() {
		var bh = $("body").height();
		var bw = $("body").width();
		$("#fullbg").css({
			height: bh,
			width: bw,
			display: "block"
		});
	}
	//判断是否寄件人
	$("#i1").click(function(){
		$("#i3").text("寄件人信息");
		$("#tbody").html("");
		//$("#i4").text("您当前还没有寄件人地址信息");
		$.ajax({
			type:"post",
			url:"http://localhost:8080/stoMaven/selectUserSender.action",
			success: function(msg){ //回调方法
				for (var i = 0; i < msg.length; i++) {
					$("#tbody").append("<tr>");
					$("#tbody").append("<th>"+msg[i].senderType+"</th>");
					$("#tbody").append("<th>"+msg[i].senderName+"</th>");
					$("#tbody").append("<th>"+msg[i].senderMobile+"</th>");
					$("#tbody").append("<th>"+msg[i].senderAddress+"</th>");
					$("#tbody").append("<th><button type='button'  onclick='s(&quot;"+msg[i].senderType+"&quot;,&quot;"+msg[i].senderName+"&quot;,&quot;"+msg[i].senderMobile+"&quot;,&quot;"+msg[i].senderAddress+"&quot;)'  class='xzbtn'>选则</button></th>");
					$("#tbody").append("</tr>");
				}
				}
			});
	})
	
	
	//判断是否收件人
	$("#i2").click(function(){
		$("#i3").text("收件人信息");
		$("#tbody").html("");
		//$("#i4").text("您当前还没有收件人地址信息");
		$.ajax({
			type:"post",
			url:"http://localhost:8080/stoMaven/selectAddress_lql.action",
			success: function(msg){ //回调方法
				for (var i = 0; i < msg.length; i++) {
					$("#tbody").append("<tr>");
					$("#tbody").append("<th>"+msg[i].recipType+"</th>");
					$("#tbody").append("<th>"+msg[i].recipName+"</th>");
					$("#tbody").append("<th>"+msg[i].recipMobile+"</th>");
					$("#tbody").append("<th>"+msg[i].recipAddress+"</th>");
					$("#tbody").append("<th><button type='button' onclick='m(&quot;"+msg[i].recipType+"&quot;,&quot;"+msg[i].recipName+"&quot;,&quot;"+msg[i].recipMobile+"&quot;,&quot;"+msg[i].recipAddress+"&quot;)'  class='xzbtn'>选则</button></th>");
					$("#tbody").append("</tr>");
				}
			}
		});
		
	})
	//判断是否同省，同省价格10元，出省价格15元
	$("#priceSearch").click(function() {
		//寄件人
		var d=$("#address").val();
		d = d.substring(0,4);
		//收件人
		var p=$("#ReceivingAddress").val();
		p = p.substring(0,4);
			if(d == p){
				$(".o1").val("2018-12-24 09:10:43");//这是假的！
				$(".o2").val("10");
			}else{
				$(".o1").val("2018-12-24 09:10:43");//这是假的！
				$(".o2").val("15");
			}
	});
	
	
	/*关闭*/
	$(".close").click(function() {
		$("#fullbg,#dialog").hide(); //关闭灰色 jQuery 遮罩 
		//$("body").css({overflow:"scroll"});    //开启滚动条
		$(".Addressee").animate({
			height: "0px",
		}, 700, function() {
			$(".Addressee").css("display", "none");
			$(".Addressee").css({
				"width": "350px",
				"height": "480px"
			});

		});

	});
	/* Verification */
	/*寄件*/
	function Mailing(){
		var userName=$("#userName").val();
		if(userName.length!=0){
			 if( userName.match( /^[\u4E00-\u9FA5]{1,}$/)&&userName.length>1 ){
			 	//发货地址验证
			 	var address=$("#address").val();
		   		if(address.length>0){
		   			var Landline=$("#Landline").val();
		   			var phone=$("#phone").val();
		   			if(Landline.length>0||phone>0){
						var pattern = /^1[34578]\d{9}$/;							
						if(pattern.test(phone)||Landline.length>0){
							var DetailedAddress=$("#DetailedAddress").val();
							if(DetailedAddress.length>0){
								var email=$("#mailbox").val();
								if(email.length>0){
									var vli2 = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
									if(vli2.test(email)){
										return true;
									}else{
										layer.msg('寄件人邮箱格式不正确');
										$("#email").focus();
										return false;
									}
								}else{
									layer.msg('请输入寄件人邮箱地址');
									$("#email").focus();
									return false;
								}
							}else{
								layer.msg('请输入寄件人详细地址');
								$("#DetailedAddress").focus();
								return false;
							}
						}else{
							layer.msg('请输入寄件人正确的手机号码');
							$("#phone").focus();
							return false;
						}
		   			}else{
		   				 layer.msg('寄件人座机号码或手机号码必须填一个');
		   				 $("#Landline").focus();
		   				 return false;
		   			}
		   		}else{
		   			layer.msg('请选择寄件人地址');
		   			$("#addressA").focus();
		   			return false;
		   		}
			}else{
		   		 layer.msg('请输入寄件人真实姓名');
		   		 $("#userName").focus();
		   		 return false;
			}
		}else{
			layer.msg('请输入寄件人姓名');
			$("#userName").focus();
			return false;
		}
	}
	/*收件*/
	function Receipt(){
		var name=$("#ReceiptName").val();
		if(name.length>0){
			if(name.match( /^[\u4E00-\u9FA5]{1,}$/)){
				var ReceivingAddress=$("#ReceivingAddress").val();
				if(ReceivingAddress.length>0){
					var ReceivingMachine=$("#ReceivingMachine").val();
					var ReceivingPhone=$("#ReceivingPhone").val();
					if(ReceivingMachine.length>0||ReceivingPhone>0){
							var pattern = /^1[34578]\d{9}$/;							
							if(pattern.test(ReceivingPhone)||ReceivingMachine.length>0){
								var DetailedAddressReceipt=$("#DetailedAddressReceipt").val();
								if(DetailedAddressReceipt.length>0){
									var weight=$("#weight").val();
									if(weight.length>0){
										  var val=$('input:radio[name="DeliveryGoods"]:checked').val();
										if(val!=null){
											return true;
										}else{
											layer.msg('请选择物品类型');
											return false;
										}
									}else{
										layer.msg('请输入物品的重量');
										$("#weight").focus();
										return false;
									}
								}else{
									layer.msg('请输入收件人详细地址');
									$("#DetailedAddressReceipt").click();
								return false;
								}
							}else{
								layer.msg('请输入收件人正确的手机号码');
								$("#ReceivingPhone").focus();
								return false;
							}
					}else{
						layer.msg('收件人座机号码或手机号码必须填一个');
						$("#ReceivingMachine").focus();
		   				 return false;
					}
				}else{
					layer.msg('请选择收件人地址');
					$("#ReceivingAddressA").focus();
		   			return false;
				}
			}else{
				 layer.msg('请输入收件人真实姓名');
				 $("#ReceiptName").focus();
		   		 return false;
			}
		}else{
			layer.msg('请输入收件人姓名');
			$("#ReceiptName").focus();
			return false;
		}
	}
	/*取件*/
	function PickParts(){
		var dates=$("#date1").val();
		if(dates.length>0){
			var timebegin =$("#timebegin").val();
			if(timebegin.length>0){
				var timeend =$("#timeend").val();
				if(timeend.length>0){
					layer.msg('提交成功');
					return true;
				}else{
					$("#timebegin").focus();
					layer.tips('请选则送达日期结束时间段', '#timeend', {
					  tips: [1, '#000'] //还可配置颜色
					});
					return false;
				}
			}else{
				$("#timebegin").focus();
				layer.tips('请选则送达日期开始时间段', '#timebegin', {
				  tips: [1, '#000'] //还可配置颜色
				});
				return false;
			}
		}else{
			$("#date1").focus();
			layer.tips('请选则送达日期', '#date1', {
				  tips: [1, '#000'] //还可配置颜色
				});
			return false;
		}
	}
	/*提交*/
	$("#orderSubmit").click(function(){
		/*调用用户下单表（寄件人）的新增方法*/
		if(Mailing()){
			var uplaceName = "uplaceName="+$("#userName").val();
			var uplacePhone = "uplacePhone="+$("#phone").val();
			var senderAddress = "senderAddress="+$("#addressA").val();
			var uplaceAddress = "uplaceAddress="+$("#DetailedAddress").val();
			var uplaceMachine = "uplaceMachine="+$("#Landline").val();
			var uplaceEmail = "uplaceEmail="+$("#mailbox").val();
			var uplacePayment = "uplacePayment="+$("#PayType").val();
			$.ajax({
				type:"post",
				url:"http://localhost:8080/stoMaven/insertUserPlace_wsq.action",
				data:uplaceName+"&"+uplacePhone+"&"+senderAddress+"&"+uplaceAddress+"&"+uplaceMachine+"&"+uplaceEmail+"&"+uplacePayment,
				dataType:"text",
				success : function(msg){
					if(msg!=0){
						/*调用用户下单表（收件人）的新增方法*/
						if(Receipt()){
							var userName = "userName="+$("#ReceiptName").val();
							var phoneNumber = "phoneNumber="+$("#ReceivingPhone").val();
							var sendsAddress = "sendsAddress="+$("#ReceivingAddress").val();
							var detailedAddress = "detailedAddress="+$("#DetailedAddressReceipt").val();
							var machineNumber = "machineNumber="+$("#ReceivingMachine").val();
							var ltemWeight = "ltemWeight="+$("#weight").val();
							var itemType = "itemType="+$("input[name='DeliveryGoods']:checked").val();
							var estimatedTime = "estimatedTime="+$(".o1").val();
							var anticipatedPrice = "anticipatedPrice="+$(".o2").val();
							var orderTime = "orderTime="+$("#date1").val()+" "+$("#timebegin").val();
							$.ajax({
								type:"post",
								url:"http://localhost:8080/stoMaven/insertOrderInforMation_gsp.action",
								data:userName+"&"+phoneNumber+"&"+sendsAddress+"&"+detailedAddress+"&"+machineNumber+"&"+ltemWeight+"&"+itemType+"&"+estimatedTime+"&"+anticipatedPrice+"&"+orderTime,
								dataType:"text",
								success : function(msg){
								}
							});
							PickParts();
						}
					}
				}
			});
		}
	});

})