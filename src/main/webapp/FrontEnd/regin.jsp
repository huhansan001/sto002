<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>申通快递会员中心-用户注册</title>
<link rel="stylesheet" href="css/regin.css" />
<link rel="icon" href="img/logo.ico" type="image/x-icon">
<script type="text/javascript " src="layui2/jquery.min.js"></script>
<script type="text/javascript " src="layui2/layui.js"></script>
<script type="text/javascript " src="layui2/layui.all.js"></script>
</head>
<body class="body">
	<div class="div_img">
		<img style="margin-left: 170px;" src="img/logo2.ico" />
	</div>
	<div class="regin_Size">
		<div class="regin_dv">
			<form class="regin_form" action="" method="post" name="formUser"
				onSubmit="return register();">
				<p
					style="height: 30px; padding-top: 30px; padding-left: 30px; padding-bottom: 20px;">
					<a class="regin_h"> 欢迎注册成为申通会员${MOB1}</a>
				</p>
				${mobile_code}
				<p class="name_form" style="font-size: 12px; color: #f41a19;"></p>
				<input class="input_one" id="mobile" name="mobile" type="text"
					placeholder="请输入手机号"><br>
				<p class="name_form" style="font-size: 12px; color: #f41a19;"></p>
				<input class="input_v" id="gd_code" type="text" placeholder="请输入验证码" />
				<input class="input_button" id="zphone" name="${mobile_code}"
					type="button" onclick="RemainTime()" value="发送验证码" /><br> <input
					class="input_one" id="pass1" type="password" placeholder="请输入密码" /><br>
				<input class="input_one" id="pass2" type="password"
					placeholder="请再次确认密码" />

				<div class="input_chek">
					<input type="checkbox" checked="checked" />
					<samp>我同意</samp>
					<a href="#" class="a_checkbox">《会员注册服务条款》</a> <br /> <br /> <br />
					<a href="#" class="a_href">忘记密码</a>
				</div>
				<input type="button" class="input_submit" onclick="sub()"
					id="submit" value="注册">
				<p>
					<span class="c_href">已有申通账号？</span> <a class="d_href" href="#">《服务条款》
						| </a> <a class=" b_href" href="login.jsp"> 直接登录 </a>
				</p>
				<div style="margin-left: 150px; margin-top: -48px;">
					<img class="img_0" src="img/sort.png" />
				</div>
			</form>
			<div class="div_button_img"></div>
		</div>
	</div>
</body>
<script type="text/javascript">

//发送验证码
	function RemainTime() {
		var photo = /^1[34578]\d{9}$/;//手机号正则
		var mobile = $("#mobile").val();//得到手机号码
		//判断验证吗状态
		$.ajax({
			type : "post",
			url : "http://localhost:8080/stoMaven/regin.action",
			data : "mobile=" + mobile,
			dataType : "json",
			success : function(msg) {
				alert(msg.yzm);
				if (msg.state == "手机号码不能为空") {
					layer.msg("手机号码不能为空");
				} else if (msg.state == "提交成功") {
					
					layer.msg("发送成功！");
				} else if (msg.state == "剩余条数不足") {
					RemainTime2();
					layer.msg("服务端剩余条数不足！");
				} else if (msg.state == "BLACK-Y") {
					layer.msg("输入有效的手机号格式！");
				}
			}
		})
	}

	//短信验证倒计时
	var iTime = 59;
	var Account;
	function RemainTime2() {
		document.getElementById('zphone').disabled = true;
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
				document.getElementById('zphone').disabled = false;
			} else {
				Account = setTimeout("RemainTime2()", 1000);
				iTime = iTime - 1;
			}
		} else {
			sTime = '没有倒计时';
		}
		document.getElementById('zphone').value = sTime;
	}

	//阻止表单提交事件
	function sub() {
		var mobile = $("#mobile").val();//得到手机号码
		var photo = /^1[34578]\d{6}$/;//验证码正则
		var pass1 = $("#pass1").val();//得到密码框内容
		var pass2 = $("#pass2").val();//得到确认密码框内容
		var gd_code = $("#gd_code").val();//得到验证码

		$.ajax({
			type : "post",
			url : "http://localhost:8080/stoMaven/regin2.action",
			//data : "mobile=" + mobile,
			dataType : "json",
			success : function(msg) {
				//alert(msg.state);
				alert(msg.yzm);
				//alert(gd_code);
				if (mobile.length != 11) {
					layer.msg("手机号格式不正确或不能为空！请重新填写!");
				} else if (msg.yzm != gd_code) {
					layer.msg("该验证码填写错误！请重新填写6位数的验证码！");
				} else if (pass1 == "" || pass2 == "") {
					layer.msg("请输入密码！不能为空");
				} else if (pass1 == pass2) {
					  layer.msg("注册成功!转跳至首页！");
					  /* window.location.href = "admin/BackHome.jsp";//跳转页面到下一步 */
					  /* <!-- 注册代码--> */
					 /*  $("#register").click(function(){ */
					  	var temp = $("#mobile").val();
					  	var temp1 = $("#pass1").val();
					  	var temp2 = $("#pass2").val();
					  	if(temp1==temp2){
					  		alert(temp+"==="+temp2);
					  		$.ajax({
					  			type:"post",
					  			url:"http://localhost:8080/stoMaven/register.action",
					  			data:"phoneNumber="+temp+"&userPass="+temp2,
					  			dataType:"text",
					  			success:function(m){
					  				alert(m);
					  				if(m=="ok"){
					  					window.location.href="login.jsp";
					  				}else{
					  					alert("两次密码输入不相符合！");
					  				}
					  			}
					  		});
					  	}else{
					  		alert("两次密码输入不相符合！");
					  	}
					/*   }) */

				}
			}
		})
	}
</script>
</html>