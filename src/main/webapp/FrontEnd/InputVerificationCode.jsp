<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
	<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link rel="shortcut icon" href="img/STO.jpg"/>
		
		<script type="" src="jquery/jquery-3.2.1/jquery-3.2.1.js"></script>
	</head>
	<link rel="stylesheet" href="css/InputVerificationCode.css" />
	<script type="text/javascript" src="Js/myCookie.js"></script>
	<body class="body">
		<!--头部开始--> 
		<div class="header">
		<!--头部第一个框-->
		<div class="The_header1">
			<div class="The_header_one">
				 <span>您好,<span>155******93</span></span>
                 <a>退出</a>
			</div>
		</div>
		<!--头部第二个框-->
		<div class="The_header2">
			<div class="The_header_two">
				<div class="The o1">
					<img style="margin-top: 19px;width: 176px;margin-left: 5px;" src="img/img_logo.png" />
				</div>
				<div class="The o2">
					<a style="color: #000;text-decoration: none;" href="admin/BackHome.jsp">首页</a>
				</div>
				<div class="The o3">
					<a style="color: #000;text-decoration: none;" href="admin/Mailing.jsp">在线寄件</a>
				</div>
				<div class="The o4">
					<a style="color: #000;text-decoration: none;" href="admin/query.jsp">运单查询</a>
				</div>
				<div class="The o5">
					<a style="color: #000;text-decoration: none;" href="admin/dingdan.jsp">订单管理</a>
				</div>
				<div class="The o6">
					<a style="color: #000;text-decoration: none;" href="admin/account.jsp">账号管理</a>
				</div>
			</div>	
		</div>
		</div>
		<!--头部结束-->
		<!--主体开始-->
		<div class="The_main_body">
			<div class="main_body1">
				<!--主体一-->
				<div class="body1">
					<div>找回密码</div>
				</div>
				<!-- 主体二 -->
				<div class="body2">
					 <div class="planTxt">
                		<p><span class="num on">1</span></p>
                		<p>选择验证方式</p>
           			 </div>
            		 <div class="plan">
               		 <div class="planing one"></div>
            		 </div>
            		 <div class="planTxt">
                        <p><span class="num" id="two">2</span></p>
               		    <p>输入验证码</p>
           			 </div>
            		 <div class="plan">
               		 <div class="planing two"></div>
           			 </div>
           			 <div class="planTxt">
                		<p><span class="num" id="three">3</span></p>
                		<p>重设密码</p>     
           			 </div>
            		 <div class="plan">
               		 <div class="planing three"></div>
            		 </div>
           			 <div class="planTxt">
                		<p><span class="num" id="four">✔</span></p>
                		<p>设置成功</p>
            		 </div>
				</div>
				<!--主体三-->
			<div class="body3">
				<div class="bo1">
					<div class="bo1-one bb1">
						<img class="jj" id="ppp" src="img/red.png" />
					</div>
					<div class="bo1-one bb2">
						<div class="ii">通过原手机验证</div>
						<div class="io">(原手机号还能正常接受短信，通过手机短信验证码进行验证)</div>
					</div>
				</div>
				<div class="bo2">
					<div  class="bo2-one bb01">
						<img class="jj"  id="iii" src="img/red2.png" />
					</div>
					<div class="bo2-one bb02">
						<div class="ii">通过邮箱验证</div>
						<div class="io">(通过已绑定的邮箱接受邮件，进行身份验证)</div>
					</div>
				</div>
				<div class="bo3">
					<div class="bo3-one" id="emailBox1">
						<label>验证码：</label>
						<input class="uu" id="yanzengma" type="text" readonly="readonly"/>
					</div>
					<div class="bo3-two">
						<a class="a1">上一步</a>
						<a class="a2" onclick="xiayibu_an()">下一步</a>
					</div>
				</div>
				 <div class="fromBox emailBox" id="emailBox">
                    <p>
                        <label>邮箱：</label>
                        <input type="text" class="emaliTxt" id="Email"/>
                    </p>
                    <p>
                        <label>验证码：</label>
                        <input type="text" class="verifyTxt" id="EmailCode" />
                        <input type="button" id="sendFGPWDEmail" class="sendVerifyBox" value="发送验证码" />
                    </p>
                    <p>
                        <a class="nextBtn email_next"  href="javascript:void(0)">下一步</a>
                    </p>
                </div>
			</div>
			</div>
		</div>
		<!--主体结束-->
		<!--尾部开始-->
		<div class="footer">
       		<div class="footer-one">
       			<div class="foo f1">
       				<div>客服热线</div>
       				<div>95543</div>
       			</div>
       			<div class="foo f2">
       				<img src="img/chat_code.jpg"/>
       				<p>微信公众号</p>
       			</div>
       			<div class="foo f3"> 
       			  	<img src="img/qq_code.png" />
       			  	<p>QQ公众号</p>
       			</div>
       			<div class="foo f4">
       				<img src="img/pay_code.png" />
       				<p>支付宝服务框</p>
       			</div>
       		</div>
       		<div class="footer-two">
       			<div class="pp p1">
       				© 2017.All RIGHT RESERVED.申通快递有限公司 版权所有
       			</div>
       			<div class="pp p2">
       				<span><img src="img/ghs.png"/></span> 沪ICP备13037807号-1
       			</div>
       		</div>
    	</div>
		<!--尾部结束-->
	</body>
	<script type="text/javascript">
	//自动将上一页面的验证码带入输入框
	$(function(){
		$("#yanzengma").val(getCookie("yanzhengma"));
	})
	$("#iii").click(function(){
		$("#emailBox").show();
		$("#iii").attr('src','img/red.png');
		$("#ppp").attr('src','img/red2.png');
	})
	$("#ppp").click(function(){
        $("#emailBox").hide();
		$("#ppp").attr('src','img/red.png');
		$("#iii").attr('src','img/red2.png');
	})
	function xiayibu_an() {
		window.location.href="wjmm2.jsp";
	}
			
	</script>
</html>