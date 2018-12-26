<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link href="./img/sto.ico" rel="icon">
		<link rel="stylesheet" type="text/css" href="css/nameVerification.css">
		<link rel="stylesheet" href="css/pick-pcc.min.1.0.1.css" />
		<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="layui/laydate/laydate.js"></script>
		<script type="text/javascript" src="layui/layer/layer.js" ></script>
		<script type="text/javascript" src="js/pick-pcc.min.1.0.1.js"></script>
		<script type="text/javascript" src="../Js/myCookie.js"></script>
		
	</head>

	<body>
		<!-- 头部 -->
		<header>
			<div class="header">
				<div class="header_logstate">
					您好,<span class="daohangtishiyonghu"></span> <span class="user_out">退出</span>
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
							<span style="font-size: 14px;margin-left: 60px;color: #555;"><a href="#" onclick="dizhizhongxin()" style="font-size: 14px;color: #555;">地址中心</a></span>
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
					<script type="text/javascript">
						function dizhizhongxin(){
							var temp = getCookie("loginPhone");
							window.location.href="http://localhost:8080/stoMaven/selectaddress_lqlAll.action?userInfoPhone="+temp;
						}
					</script>
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
								<select  id="sex">
									<option>男</option>
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
						
							<span style="margin-left: 175px;">身份证号：</span>
							<input type="text" id="userIDnumber" style="padding-left: 20px;border: 1px solid #DCDCDC; height: 40px; width: 310px; margin-top: 20px;" onkeyup="this.value=this.value.replace(/[^\w_]/g,'');"  maxlength="18"/>
						
						</div>
						
						<script>
								$(".user_out").click(function(){
									window.location.href="../login.jsp";
								});
								
								 $(function(){
									 $(".daohangtishiyonghu").text(getCookie("loginPhone"));
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
								 	$("#sub").click(function(){
								 		//名字验证
								 		var realName = $("#realName").val();
								 		if(realName.length>0){
								 			//民族验证
								 			var nation=$("#nation").val();
								 			if(nation.length>0){
								 				//生日验证
								 				var date=$("#date").val();
								 				if(date.length>0){
								 					//性别验证
								 					var sex=$("#sex").val();
								 					if(sex.length>0){
								 						//手机验证
								 						var phone = $("#phone").val();
													 	if (phone.length>0) {
															 var pattern = /^1[34578]\d{9}$/; 
															 if(pattern.test(phone)){
															 	//家庭住址验证
															 	var familyAdd=$("#familyAdd").val();
															 	if(familyAdd.length>0){
															 		//详细地址验证
															 		var fullAdd=$("#fullAdd").val();
															 		if(fullAdd.length>0){
															 			//身份证号码验证
															 			var userIDnumber=$("#userIDnumber").val();
															 			if(userIDnumber.length>0){
															 			    var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
															 			    if(pattern.test(userIDnumber)){
															 			    	//验证码验证
															 			    	var code=$("#code").val();
															 			    	if(code.length==4){
															 			    		$("#sub").off().click(function(){
															 			    			var realName = $("#realName").val();//姓名
															 			    			var nation=$("#nation").val();//民族
															 			    			var date=$("#date").val();//生日
															 			    			var sex=$("#sex").val();//性别
															 			    			var familyAdd=$("#familyAdd").val();//家庭住址
															 			    			var fullAdd=$("#fullAdd").val();//详细地址
															 			    			var userIDnumber=$("#userIDnumber").val();//身份证
															 			    			var phone = $("#phone").val();//手机号码
															 			    			$.ajax({
																							type:'post',
																							url:'http://localhost:8080/stoMaven/insertUserRealName.action',
																							data:'userName='+realName+'&userSex='+sex+'&userNation='+nation+'&userBirthday='+date+'&userIDnumber='+userIDnumber+'&homeAddress='+familyAdd+'&detailedAddress='+fullAdd+'&phoneNumber='+phone,
																							success:function(msg){
																								if(msg=='ok'){
																								 layer.msg("保存成功");
																								}
																							} 
																						});
															 			    		})
															 			    	}else{
															 			    		layer.msg('验证码错误');
																	 				$("#code").focus();
															 			    	}
															 			    }else{
															 			    	layer.msg('身份证号码格式不正确');
																 				$("#userIDnumber").focus();
															 			    }
															 			}else{
															 				layer.msg('身份证号码不能为空');
															 				$("#userIDnumber").focus();
															 			}
															 		}else{
															 			layer.msg('详细地址不能为空');
															 			$("#fullAdd").focus();
															 		}
															 	}else{
															 		layer.msg('家庭住址不能为空');
															 		$("#familyAdd").focus();
															 	}
															 }else{
															 	layer.msg('手机号码格式不正确');
															 	$("#phone").focus();
															 }
														 }else{
														 	layer.msg('手机号码不能为空');
														 	$("#phone").focus();
														 }
								 					}else{
								 						layer.msg('性别不能为空');
										 				$("sex").focus();
								 					}
								 				}else{
								 					layer.msg('生日不能为空');
									 				$("date").focus();
								 				}
								 			}else{
								 				layer.msg('民族不能为空');
								 				$("nation").focus();
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
							<input type="text" id="phone" name="phone" style="padding-left: 20px;margin-top:15px;border: 1px solid #DCDCDC; height: 38px; width: 314px;" oninput="value=value.replace(/[^\d]/g,'')"  maxlength="11" />
							<br />
							<span style=" margin-left: 184px;">验证码：</span>
							<input type="text" onclick="get()" id="code" style=" padding-left: 20px;margin-top:15px;border: 1px solid #DCDCDC; height: 38px; width: 102px;" oninput="value=value.replace(/[^\d]/g,'')" />
							<input type="button" class="sendCode" id="sendCode" value="发送验证码" onclick="SendCode()" />
							<br />
							<br />
							<input class="orderSubmit" id="sub" type="button" value="提交" />

						</div>
					</div>
				<script type="text/javascript " src="jquery/jquery-3.2.1/jquery.min.js"></script>
				<script type="text/javascript " src="layuis/layui.js"></script>
				<script type="text/javascript " src="layuis/layui.all.js"></script>
				<script type="text/javascript">
				//提交
				function get(){
					var photo = /^1[34578]\d{6}$/;//验证码正则
					var mobile_code=$("#code").val();//得到输入的验证码
					$.ajax({
						type : "post",
						url : "http://localhost:8080/stoMaven/regin2.action",
						//data : "mobile=" + mobile,
						dataType : "json",
						success : function(msg) {
							//alert(msg.state);
							alert(msg.yzm);
							alert(mobile_code);
						if (msg.yzm==mobile_code) {
								//window.location.href="InputVerificationCode.jsp";//跳转页面到下一步		
							}else{
								layer.msg("该验证码错误！请重新填写！");
							}
						}
					})
				}
					function SendCode(){
						var photo = /^1[34578]\d{9}$/;//手机号正则
						var mobile = $("#phone").val();//得到手机号码
						//判断验证吗状态
						$.ajax({
							type : "post",
							url : "http://localhost:8080/stoMaven/regin.action",
							data : "mobile=" + mobile,
							dataType : "json",
							success : function(msg) {
								alert(msg.yzm);
								if (msg.state == "提交成功") {
									RemainTime2();
									layer.msg("发送成功！");
								} else if(msg.state=="剩余条数不足"){
									
									layer.msg("短信剩余条数不足！");
								}else if(msg.state=="BLACK-Y"){
									layer.msg("输入有效的手机号格式！");
								}
							}
						})
					}
					//短信验证倒计时
					var iTime = 59;
					var Account;
					function RemainTime2() {
						document.getElementById('sendCode').disabled = true;
						var iSecond, sSecond = "", sTime = "";
						if (iTime >= 0) {
							iSecond = parseInt(iTime % 60);
							iMinute = parseInt(iTime / 60)
							if (iSecond >= 0) {
								if (iMinute > 0) {
									sSecond = iMinute + "分" + iSecond + "秒";
								} else {
									sSecond = iSecond + "秒";
								}
							}
							sTime = sSecond;
							if (iTime == 0) {
								clearTimeout(Account);
								sTime = '获取手机验证码';
								iTime = 59;
								document.getElementById('sendCode').disabled = false;
							} else {
								Account = setTimeout("RemainTime2()", 1000);
								iTime = iTime - 1;
							}
						} else {
							sTime = '没有倒计时';
						}
						document.getElementById('sendCode').value = sTime;
					}
						
					</script>
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