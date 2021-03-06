<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>申通快递|会员中心|客户的满意,申通的追求!</title>
<link rel="shortcut icon" href="img/sto.ico" />
<link rel="stylesheet" type="text/css" href="FrontEnd/admin/css/account.css" />
<link rel="stylesheet" type="text/css" href="FrontEnd/admin/css/pick-pcc.min.1.0.1.css" />
<script type="text/javascript" src="FrontEnd/admin/jquery/jquery-3.2.1/jquery-3.2.1.js"></script>
<script type="text/javascript" src="FrontEnd/admin/jquery/jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="FrontEnd/admin/layui/laydate/laydate.js"></script>
<script type="text/javascript" src="FrontEnd/admin/js/pick-pcc.min.1.0.1.js"></script>
<script type="text/javascript" src="FrontEnd/admin/layui/layer/layer.js"></script>
<script type="text/javascript" src="FrontEnd/Js/myCookie.js"></script>


</head>
<body style="background: #f0f4f5;">
	<!-- 头部 -->
	<header>
		<div class="header">
			<div class="header_logstate">
				<span>您好,<span class="daohangtishiyonghu"></span> <span class="user_out">退出</span>
			</div>
		</div>
	</header>
	<!-- 头部结束 -->
	<!-- 导航 -->
	<nav>
		<div class="Nav_Inside">
			<div class="NavBox">
				<div class="Nav_logo">
					<img src="FrontEnd/admin/img/logo.png" alt="Logo" />
				</div>
				<div class="Nav_li">
					<ul>
						<li><a href="FrontEnd/admin/BackHome.jsp">首页 </a></li>
						<li><a href="FrontEnd/admin/Mailing.jsp">在线寄件</a></li>
						<li><a href="FrontEnd/admin/query.jsp">运单查询</a></li>
						<li><a href="FrontEnd/admin/dingdan.jsp">订单管理</a></li>
						<li><a href="#" class="tempA" style="color: rgb(237, 105, 0);">账户管理</a></li>
					</ul>
				</div>
			</div>
		</div> 
	</nav>
	<!-- 主体 -->
	<div id="body">
		<div id="w1">
			<div id="title">
				<span id="titleImg"><img src="FrontEnd/admin/img/user.png" /></span> <span
					id="titleText">账户管理</span>
			</div>
			<ul id="ul">
				<li><a href="javascript:void(0)" style="color: #ee6900;">基本信息</a></li>
				<li><a href="#" onclick="dizhizhongxin()">地址中心</a></li>
				<li><a href="javascript:void(0)">账号绑定</a></li>
				<li><a href="javascript:void(0)">月结客户</a></li>
				<li><a href="nameVerification.jsp">实名认证</a></li>
				<li><a href="javascript:void(0)">我的订阅</a></li>
			</ul>
		</div>
		<script type="text/javascript">
		$(".tempA").click(function(){
			window.location.href="http://localhost:8080/stoMaven/selectAll.action?phoneNumber="+getCookie("loginPhone");
		});
			function dizhizhongxin(){
				var temp = getCookie("loginPhone");
				window.location.href="http://localhost:8080/stoMaven/selectaddress_lqlAll.action?userInfoPhone="+temp;
			}
		</script>
		<div id="w2">
			<div id="titleBox">
				<span id="spaceText">个人信息</span>
				 <a href="javascript:void(0)" id="sw"><span class="spaceText">取消</span> </a>
				  <a href="javascript:void(0)" id="sw1"><span class="spaceText1" id="sava">保存</span> </a>
				 <a id="editImg">
					<img src="FrontEnd/admin/img/edit.png" id="iii" /></a>
			</div>
			<div id="header"></div>
			
			<div id="userInfoBox">
				<div id="line">
					<div id="l_left"   class="upUser">
						<label>姓名：</label> <input type="text" id="userName" class="UserName"
							name="UserName" value="${list[0].message_name }" style="padding-left:10px">
					</div>
					<div id="l_right">
						<label>生日:</label> <input id="birthday" class="date" type="text" readonly="readonly"
							name="Birthday" value="${list[0].message_birthday} " style="padding-left:10px">

					</div>
				</div>
				<div id="line_2">
					<div id="l2_left"  class="upUser">
						<label>手机：</label> <input type="text" id="phone" class="mobile" name="mobile"  maxlength="11"
							value="${list[0].message_phone }" style="padding-left:10px" oninput="value=value.replace(/[^\d]/g,'')">
					</div>
					<div id="l2_right">
						<label style="position: relative;top: 30px;left: -35px;">性别:</label>
						<div class="layui-input-inline" >
									<select name="quiz1"  class="sex" name="sex" id="sex" >
										<option >男</option>
										<option >女</option>
									</select>
								</div>	
					</div>
				</div>
				<div id="line_3">
					<div id="l3_left">
						<label style="margin-top: 10px;">省市区：</label> <a
							href="javascript:void(0)" class="pick-area pick-area4"
							id="cityfont"
							style="margin-top: -17px; margin-left: 62px; font-size: 14px; background: white;"></a>
						<input type="hidden" id="city" class="city" name="city" value="${list[0].message_site }"
							style="position: relative; left: 40px;padding-left:10px" >
					</div>
					<div id="l3_right">
						<label>详细地址:</label>
						<textarea id="HomeAddress" type="text" class="d12" name="HomeAddress" style="padding-left:5px">${list[0].message_address }</textarea>
					</div>
				</div>
			</div>
			
			<div id="space">
				<span id="spaceText">验证信息</span>
			</div>
			<div id="vContent"></div>
			<div id="space">
				<span id="spaceText">密码设置</span>
			</div>
			<div id="footer">
				<p>
					<span>登陆后修改您的申通账号密码</span> <a href="FrontEnd/admin/wjmm1.jsp">修改>></a>
				</p>
			</div>
		</div>
	</div>
	<!--
        	作者：offline
        	时间：2018-12-06
        	描述：底部
        -->
	<!-- 底部 -->
	<footer style="background: white; margin-top: 50px;">
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
					<img src="FrontEnd/admin/img/chat_code.jpg" /> <img src="FrontEnd/admin/img/qq_code.png" /> <img
						src="FrontEnd/admin/img/pay_code.png" />
					<div>
						<span>微信公众号</span> <span>QQ公众号</span> <span>支付宝服务窗</span>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- 版权 -->
	<div class="copyright">
		<div class="copy">
			<span class="copyright"> ? 2017.All RIGHT RESERVED.申通快递有限公司
				版权所有 <img src="FrontEnd/admin/img/ghs.png"
				style="background: #f0f4f5; margin-left: 30px; margin-top: 5px;" />
				<span style="color: #ed6a00; background-color: #f0f4f5;">沪ICP备13037807号-1</span>
			</span>
		</div>
	</div>
	<script type="text/javascript">
	
		</script>
	<script>
	$(".user_out").click(function(){
		window.location.href="../login.jsp";
	});
	$(function(){
		$(".daohangtishiyonghu").text(getCookie("loginPhone"));
		$("#editImg").click(function(){
			$(this).css("display","none");
			$(".spaceText").show();
			$(".spaceText1").show();
		});
		
		$(".spaceText").click(function(){
			$("#editImg").show();
			$(".spaceText").css("display","none");
			$(".spaceText1").css("display","none");
		});
	});
	
	//格式验证
	$(function(){
		$(".spaceText1").click(function(){
			//姓名认证
			var UserName=$(".UserName").val();
			if(UserName.length>0){
				//手机认证
				var mobile=$(".mobile").val();
				if(mobile.length>0){
					var pattern=/^1[34578]\d{9}$/;
					if(pattern.test(mobile)){
						//生日认证
						var date=$(".date").val();
						if(date.length>0){
							//地址认证
							var city=$(".city").val();
							if(city.length>0){
								//性别认证
								var sex=$(".sex").val();
								if(sex.length>0){
									$("#sava").off().click(function () {
										var name = $("#userName").val();
										var birthday=$("#birthday").val();
										var phone=$("#phone").val();
										var sex=$("#sex").val();
										var city=$("#city").val();
										var HomeAddress=$("#HomeAddress").val();
										$.ajax({
											type:'post',
											url:'http://localhost:8080/stoMaven/insertMessage.action',
											data:'message_name='+name+'&message_birthday='+birthday+'&message_phone='+phone+'&message_sex='+sex+'&message_site='+city+'&message_address='+HomeAddress,
											success:function(msg){
												if(msg=='ok'){
												 layer.msg("保存成功");
												}
											} 
										});
									})
								}else{
									layer.msg('请填写你的性别');
									$("sex").focus();
								}
							}else{
								layer.msg('省市区不能为空');
								$("city").focus();
							}
						}else{
							layer.msg('请填写你的生日');
							$("date").focus();
						}
					}else{
						layer.msg('手机格式不正确');
						$("mobile").focus();
					}
					
				}else{
					layer.msg('请输入你的手机号码');
					$("mobile").focus();
				}
			}else{
				layer.msg('请输入你的姓名');
				$("UserName").focus();
			}
		})
	})
			//自定义格式
			laydate.render({
				elem: '.date',
				format: 'yyyy年MM月dd日'
			});
			$(function() {
				/*联动地址*/
				$(".pick-area4").pickArea({
					"format": "province/city/county", //格式
					"width": "260", //设置“省市县”文本边框的宽度
					"height": "40", //设置“省市县”文本边框的高度
					"borderColor": "#ededed;", //设置“省市县”文本边框的色值
					"arrowColor": "#ededed;", //设置下拉箭头颜色
					"listBdColor": "#ededed;", //设置下拉框父元素ul的border色值
					"color": "#ededed;", //设置“省市县”字体颜色
					"fontSize": "13px", //设置字体大小
					"hoverColor": "#435abd",
					"paddingLeft": "8px", //设置“省”位置处的span相较于边框的距离
					"arrowRight": "10px", //设置下拉箭头距离边框右侧的距离
					"maxHeight": "300px",
					"background": "#000",
					//"preSet":"",//数据初始化 ；这里的数据初始化有两种方式，第一种是用preSet属性设置，第二种是在a标签里使用name属性设置
					"getVal": function() { //这个方法是每次选中一个省、市或者县之后，执行的方法
						var thisdom = $("." + $(".pick-area-dom").val()); //返回的是调用这个插件的元素pick-area，$(".pick-area-dom").val()的值是该元素的另一个class名，这个class名在dom结构中是唯一的，不会有重复，可以通过这个class名来识别这个pick-area
						thisdom.next().val($(".pick-area-hidden").val()); //$(".pick-area-hidden").val()是页面中隐藏域的值，存放着每次选中一个省、市或者县的时候，当前文本存放的省市县的最新值，每点击一次下拉框里的li，这个值就会立即更新
					}
				});
				var temp = $("#city").val();
				var temp2 = temp.split(' ');
				$(".pick-province").text(temp2[0]);
				$(".pick-city").text(temp2[1]);
				$(".pick-county").text(temp2[2]);
			});
		</script>
</body>
</html>