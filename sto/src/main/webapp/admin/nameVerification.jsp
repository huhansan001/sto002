<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link href="./img/sto.ico" rel="icon">
		<link rel="stylesheet" type="text/css" href="css/nameVerification.css">
		<link rel="stylesheet" href="css/pick-pcc.min.1.0.1.css" />
		<script type="text/javascript" src="./js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="layui/laydate/laydate.js"></script>
		<script type="text/javascript" src="layui/layer/layer.js" ></script>
		<script type="text/javascript" src="js/pick-pcc.min.1.0.1.js"></script>
		
	</head>

	<body>
		<!-- 头部 -->
		<header>
			<div class="header">
				<div class="header_logstate">
					您好,180******63 <span class="user_out">退出</span>
				</div>
			</div>
		</header>
		<!-- 头部结束 -->
		<!-- 导航 -->
		<nav>
			<div class="Nav_Inside">
				<div class="NavBox">
					<div class="Nav_logo">
						<img src="img/logo.png" alt="Logo" />
					</div>
					<div class="Nav_li">
						<ul>
							<li>
								<a href="BackHome.jsp">首页 </a>
							</li>
							<li>
								<a href="Mailing.jsp" >在线寄件</a>
							</li>
							<li>
								<a href="query.jsp">运单查询</a>
							</li>
							<li>
								<a href="dingdan.jsp">订单管理</a>
							</li>
							<li>
								<a href="account.jsp" style="color: rgb(237, 105, 0);">账户管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>

		<!--主体-->
		<section>
			<div id="h">
				<div id="center">
					<div class="center_one">
						<div class="title">
							<img src="img/user.png" alt="账户icon" style="padding-top: 5px;margin-left: 16px;" />
							<span style="font-size: 20px; margin-left: 10px;color: #555;">账户管理</span>
						</div>
						<div class="center_one1">
							<span style="font-size: 14px;margin-left: 60px;color: #555;"><a href="account.jsp" style="font-size: 14px;color: #555;">基本信息</a></span>
						</div>
						<div class="center_one1">
							<span style="font-size: 14px;margin-left: 60px;color: #555;"><a href="address.jsp" style="font-size: 14px;color: #555;">地址中心</a></span>
						</div>
						<div class="center_one1">
							<span style="font-size: 14px;margin-left: 60px;color: #555;"><a style="font-size: 14px;">账号绑定</a></span>
						</div>
						<div class="center_one1">
							<span style="font-size: 14px;margin-left: 60px;color: #555;"><a style="font-size: 14px;">月结客户</a></span>
						</div>
						<div class="center_one1">
							<span style="font-size: 14px;margin-left: 60px;color: #ee6900;"><a href="nameVerification.jsp"  style="font-size: 14px;color: #ee6900;">实名认证</a></span>
						</div>
						<div class="center_one1">
							<span style="font-size: 14px;margin-left: 60px;color: #555;"><a style="font-size: 14px;">我的订阅</a></span>
						</div>
					</div>
					<div class="center_two">
						<div class="center_two1">
							<span style="font: '微软雅黑';font-size:16px ;padding-left: 190px;line-height: 50px;">根据国家邮政局最新规定，寄收快递必须实名制</span>
						</div>
						<div class="center_two2">
							<span style="font: '微软雅黑';font-size:16px ;padding-left: 220px;line-height: 50px;">身份证正面照片 (上传照片不得大于1M)</span>

						</div>
						<div class="center_two3">
							<div id="IMGON">
								<span>图片智能识别</span>
							</div>
						</div>
						<div class="center_two4">
							<span style="margin-left: 200px;">姓名：</span>
							<input type="text" id="realName" style="margin-top:30px;border: 1px solid #DCDCDC; height: 38px; width: 102px;padding-left: 20px;" />
							<span style="margin-left: 57px;padding-left: 20px;">性别：</span>

							<td>
								<!--单元格开始-->
								<select>
									<!下拉框控件>
									<option>男</option>
									<!--<option value = "1">男</option>-->
									<option value="1">女</option>
								</select>
							</td>

							<br/>
							<span style=" margin-left: 200px;">民族：</span>
							<input type="text" id="nation" style="padding-left: 20px;margin-top:15px;border: 1px solid #DCDCDC; height: 38px; width: 102px;" />
							<span style="margin-left: 36px;">出生年月：</span>
							<input type="text" id="date" readonly="readonly" style="margin-top:15px;border: 1px solid #DCDCDC; height: 38px; width: 102px;" />
							<br /><br /><br />
							<script>
							
								//自定义格式
								laydate.render({
									elem: '#date',
									format: 'yyyy年MM月dd日'
								});
							</script>
							
							
							<span style=" margin-left: 175px;">家庭住址：</span>
							<a href="javascript:void(0)" class="pick-area pick-area4" style="margin-left:238px;margin-top: -30px;"></a>
							<input type="hidden" id="familyAdd" style="margin-left:10px;border: 1px solid #DCDCDC; height: 38px; width: 310px;" />
							<br />
							
							<span style="margin-left: 175px;">详细地址：</span>
							<input type="text" id="fullAdd" style="padding-left: 20px;border: 1px solid #DCDCDC; height: 40px; width: 310px;" />
						</div>
						
						<script>
								 $(function(){
								 	$("#sendCode").click(function(){
								 		var phone = $("#phone").val();
									 	if (phone.length>0) {
											 var pattern = /^1[34578]\d{9}$/; 
											 if(pattern.test(phone)){
											 	
											 }else{
											 	layer.msg('手机号码格式不正确');
											 	$("#phone").focus();
											 }
										 }else{
										 	layer.msg('手机号码不能为空');
										 	$("#phone").focus();
										 }
									 })
								 })
								 
								 
													 	
								 $(function(){
								 	
								 	$("#submit").click(function(){
								 		var realName = $("#realName").val();
								 	
									 	if (realName.length>0) {
									 		var nation = $("#nation").val();
											 if (nation.length>0) {
											 	var date = $("#date").val();
											 	if (date.length>0) {
											 		var familyAdd = $("#familyAdd").val();
											 		if (familyAdd.length>0) {
											 			var fullAdd = $("#fullAdd").val();
												 			if (fullAdd.length>0) {
												 			var phone = $("#phone").val();
												 			if (phone.length>0) {
												 				var code = $("#code").val();
												 					if (code.length>0) {
												 						
												 					} else{
												 						layer.msg('验证码必须填');
												 						$("#code").focus();
												 					}
												 				
													 			} else{
													 				layer.msg('手机号必须填');
													 				$("#phone").focus();
													 			}
												 			} else{
												 				layer.msg('详细地址必须填');
												 				$("#fullAdd").focus();
												 			}
											 		} else{
											 			layer.msg('家庭地址必须填');
											 			$("#familyAdd").focus();
											 		}
											 	}else{
											 		layer.msg('出生年月必须选择');
											 		$("#date").focus();
											 	}
											 }else{
											 	layer.msg('民族不能为空');
										 	$("#nation").focus();
											 }
										 }else{
										 	layer.msg('姓名不能为空');
										 	$("#realName").focus();
										 }
									 })
								 })
							
						</script>
						
						<script>
							
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
								});
							});
						</script>
						
						
						
						<div class="center_two5">
							<span style="font-family: '微软雅黑';font-size: 16px;margin-left: 320px;line-height: 50px;">手机验证</span>
						</div>
						<div class="center_two6">
							<span style="margin-left: 184px;">手机号：</span>
							<input type="text" id="phone" name="phone" style="padding-left: 20px;margin-top:15px;border: 1px solid #DCDCDC; height: 38px; width: 314px;" />
							<br />
							<span style=" margin-left: 184px;">验证码：</span>
							<input type="text" id="code" style="padding-left: 20px;margin-top:15px;border: 1px solid #DCDCDC; height: 38px; width: 102px;" />
							<input type="button" class="sendCode" id="sendCode" value="发送验证码" onclick="SendCode()" />
							<br />
							<br />
							<input class="orderSubmit" id="submit" type="button" value="提交" />

						</div>
					</div>

				</div>

			</div>

		</section>
		<!-- 底部 -->
		<footer style="background: white;margin-top: 50px;">
			<div class="foot_slide">
				<div class="foot_chi">
					<div class="kefu">
						<p style="margin-top: 50px;">
							<a>客服热线</a>
						</p>
						<p style="margin-top: 20px;">
							<a>95543</a>
						</p>
					</div>
					<div class="code">
						<img src="img/chat_code.jpg" />
						<img src="img/qq_code.png" />
						<img src="img/pay_code.png" />
						<div>
							<span>微信公众号</span>
							<span>QQ公众号</span>
							<span>支付宝服务窗</span>
						</div>
					</div>
				</div>
			</div>

		</footer>
		<!-- 版权 -->
		<div class="copyright">
			<div class="copy">
				<span class="copyright">
               		? 2017.All RIGHT RESERVED.申通快递有限公司 版权所有
               		<img src="img/ghs.png" style="background: #f0f4f5;margin-left: 30px; margin-top: 5px;" />
                   	<span style="color: #ed6a00;background-color: #f0f4f5;">沪ICP备13037807号-1</span>
				</span>
			</div>
		</div>
	</body>

</html>