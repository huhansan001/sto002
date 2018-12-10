<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>申通快递会员中心-登录</title>
<link rel="shortcut icon" href="img/STO.jpg"/>
<link rel="stylesheet" href="css/yunda.css" />
<link rel="stylesheet" href="css/1.css" />
<link rel="stylesheet" href="css/2.css" />
<script type="text/javascript" src="Js/jquery.js"></script>
</head>
<body style="background: #f0f4f5;">
	<div class="header">
		<div class="top">
			<div class="content">
				<img src="img/logo.png" />
			</div>
		</div>
	</div>
	<div class="mainer">
		<div class="wrap">
			<div class="memberBox">
				<div class="left">
					<div class="title">
						<a class="titleOn" href="javascript:void(0)">账户登录</a> <span>|</span>
						<a href="javascript:void(0)" onclick="on()">短信登录</a>
					</div>
					<div class="or">
						<div class="orTop"></div>
						<div style="height: 30px;"></div>
						<div class="orBottom"></div>
						<span
							style="position: absolute; left: -6px; top: 150px; font-size: 14px">or</span>
					</div>
					<!--手机号登录-->
					<form id="telLogin">
						<div class="telLogin">
							<div class="inputBox">
								<div class="txtBox">
									<p>
										<input class="telBox" id="mobile" name="mobile" placeholder="请输入手机号" type="text" />
									</p>
									<p style="margin-top: 20px">
										<input class="codeBox" id="code" name="code" placeholder="请输入验证码" type="text" />
										<input class="sendCode" id="sendCode" name="sendCode" type="button" onclick="RemainTime()" value="发送验证码" />
									</p>
								</div>
							</div>
							<div class="inputOperate">
								<div class="OperateBox">
									<p class="remember">
										<a href="#">忘记密码？</a>
									</p>
									<p>
										<input class="loginBtn" id="telLoginBtn" type="button"
											value="登录" />
									</p>
									<p class="alert">
										<span>还没有申通账号？</span> <span style="color: #ee6a00">《服务条款》</span>
										<span>|&nbsp;</span> <span> <a class="resgisterBtn"
											href="#"><span>立即注册</span><img src="img/sort.png"
												alt="箭头" /> </a>
										</span>
									</p>
								</div>
							</div>
						</div>
					</form>
					<!--账号登录-->
					<form id="numLogin">
						<div class="accountLogin">
							<div class="inputBox">
								<div class="txtBox">
									<p>
										<input class="telBox" id="numMobile" name="numMobile"
											placeholder="请输入手机号" type="text" />
									</p>
									<p style="margin-top: 20px">
										<input class="telBox" id="numPassword" name="numPassword"
											placeholder="请输入密码" type="password" />
									</p>
								</div>
							</div>
							<div class="inputOperate" style="margin-top: 18px;">
								<div class="OperateBox">
									<p class="remember">
										<a href="#">忘记密码？</a>
									</p>
									<p>
										<input class="loginBtn" id="numLoginBtn" type="button"
											value="登录" />
									</p>
									<p class="alert" style="margin-top: 10px;">
										<span>还没有申通账号？</span> <span style="color: #ee6a00">《服务条款》</span>
										<span>|&nbsp;</span> <span> <a class="resgisterBtn"
											href="regin.jsp">立即注册<img src="img/sort.png" alt="箭头" />
										</a>
										</span>
									</p>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="QRCode">
					<p>
						<img style="margin-left: 50px" src="img/微信公众号.jpg" alt="申通快递官方公众号" />
					</p>
					<p
						style="width: 195px; margin-left: 490px; margin-top: 10px; color: #757575;">扫描关注申通微信公众号</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer"></div>
	<script type="text/javascript">
		$(function() {
			$(".title a").click(function() {
				if ($(this).index() == 0) {
					$(".telLogin").hide();
					$(".accountLogin").show();
					$(".title a").removeClass("titleOn");
					$(this).addClass("titleOn");
				}
				if ($(this).index() == 2) {
					$(".telLogin").show();
					$(".accountLogin").hide();
					$(".title a").removeClass("titleOn");
					$(this).addClass("titleOn");
				}
			});
		})
		function RemainTime(){
	var mobile =$('#mobile').val();
	$.ajax({
		type : "post",
		url : "regin",
		data : "method=API&mobile="+mobile,
		dataType:"text",
		success:function(msg){
			if(msg=='提交成功'){
				RemainTime2();
			}else{
				alert('同一手机号验证码短信发送超出5条');
				location.reload();
			}
		}
	});
}
var iTime = 59;
var Account;
//短信验证倒计时
function RemainTime2() {
	document.getElementById('zphone').disabled = true;
	var iSecond, sSecond = "",
	sTime = "";
	if(iTime >= 0) {
		iSecond = parseInt(iTime % 60);
		iMinute = parseInt(iTime / 60)
		if(iSecond >= 0) {
			if(iMinute > 0) {
				sSecond = iMinute + "分" + iSecond + "秒";
			} else {
				sSecond = iSecond + "秒";
			}
		}
		sTime = sSecond;
		if(iTime == 0) {
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
$("#numLoginBtn").click(function () {
	window.location.href="admin/BackHome.jsp";
})
	</script>
</body>
</html>