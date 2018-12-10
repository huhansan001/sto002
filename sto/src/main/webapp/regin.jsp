<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>申通快递会员中心-用户注册</title>
<link rel="stylesheet" href="css/regin.css" />
<link rel="icon" href="img/logo.ico" type="image/x-icon">
<script type="text/javascript" src="Js/jquery.js"></script>
<script type="text/javascript " src="Js/regin.js"></script>
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
					<a class="regin_h"> 欢迎注册成为申通会员</a>
				</p>
				<p class="name_form" style="font-size: 12px; color: #f41a19;"></p>
				<input onchange="registerName() "      class="input_one" id="mobile" name="mobile" type="text"
					placeholder="请输入手机号" /><br />
					 <input class="input_v" id="gd_code"
					type="text" placeholder="请输入验证码" />
					 <input class="input_button"
					id="zphone" type="button" onclick="RemainTime()" value="发送验证码" /><br />

				<input class="input_one" type="password" placeholder="请输入密码" /><br />

				<input class="input_one" type="password" placeholder="请再次确认密码" />

				<div class="input_chek">
					<input type="checkbox" checked="checked" />
					<samp>我同意</samp>
					<a href="#" class="a_checkbox">《会员注册服务条款》</a> <br /> <br /> <br />
					<a href="#" class="a_href">忘记密码</a>
				</div>

				<input class="input_submit" type="submit" value="注册" /> <br />
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

<!--验证码判断是否正确-->
function registerName() {
	var photo = /^1[34578]\d{6}$/;//验证码正则
	var mobile = $("#gd_code").val();//得到文本框验证码
	var mo = $(".mo").text();
	var na=$(".in_cla").attr("name");
	var bool = true;
	$.ajax({
		type : "post",
		url : "regin",
		data : "method=API&mobile="+mobile,
		dataType : "text",
		/*async(异步)会先执行success这里面代码*/
		async : false,
		success : function(re) {
			if ("" == mobile_) {
				$(".name_form").text("验证码格式不能为空！请重新输入！！");
				bool = false;
			} else if (wait==0) {
				$(".name_form").text("该验证码已失效！请重新发送！");
				bool = false;
			} else if (mobile_code != mo) {
				$(".name_form").text("该验证码错误！请重新填写！");
				bool = false;
			}else if(na!=mo){
				$(".name_form").text("该验证码错误！请重新填写！");
			} else {
				bool = true;
			}
		}
	})
	return bool;
}
<!--手机判断是否正确--> 
function registerName() {
	var photo = /^1[34578]\d{9}$/;//手机号正则
	var mobile = $("#mobile").val();
	var check=$("#check").prop("checked");
	var bool = true;
	$.ajax({
		type : "post",
		url : "regin",
		data : "method=API&mobile=" + mobile,
		dataType : "text",
		async : false,/* async(异步)会先执行success这里面代码  */
		success : function(re) {
			if ("" == username) {
				$(".name_form").text("手机号不能为空！");
				bool = false;
			} else if (!photo.test(username)) {
				$(".name_form").text("手机号输入格式错误！请重新输入");
				bool = false;
			} else if ("no" == re) {
				$(".name_form").text("该手机码无效！请重新核对！");
				bool = false;
			}else if(false==check){
				bool = false;	
			}else {
				$(".name_form").text("");
				bool = true;
			}
		}
	})
	return bool;
}
</script>
</html>