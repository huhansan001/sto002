<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link href="img/sto.ico" rel="icon">
		<link rel="stylesheet" href="css/head.css" />
		<script type="" src="jquery/jquery-3.2.1/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="Js/myCookie.js"></script>
	</head>

	<body>
		<div class="header clearfix">
			<div class="headerTop">
				<span>您好,</span>
				<span>您目前还未登录</span>
				<a href="">去登录</a>
			</div>
		</div>
		<div class="Nav">
			<div class="NavBox">
				<div class="Login">
					<img src="img/img_logo.png"/>
				</div>
				<div class="navList">
					<ul>
						<li>
							<a href="admin/BackHome.jsp" class="on">首页</a>
						</li>
						<li>
							<a href="admin/Mailing.jsp">在线寄件</a>
						</li>
						<li>
							<a href="admin/query.jsp">运单查询</a>
						</li>
						<li>
							<a href="admin/dingdan.jsp">订单管理</a>
						</li>
						<li>
							<a href="admin/account.jsp">账户管理</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="box" style="min-height:800px;">
			<div class="viewContent">
				<div class="title">
					<div>找回密码</div>
				</div>
				<div class="viewInfo">
					<div class="schedule">
						<div class="planTxt">
							<p><span class="num on" style="background: #EE6A00;">1</span></p>
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
					<div class="verifyType">
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
						<div class="telContent">
							<div class="fromBox" id="telBox">
								<p>
									<label id="upshouji">手机号：</label>
									<input type="text" class="emaliTxt" id="mobile" />
								</p>
								<p>
									<label>验证码：</label>
									<input type="text" class="verifyTxt" id="code" />
									<input type="button" id="sendFGPWDPhone" onclick="RemainTime()" class="sendVerifyBox" value="发送验证码" />
								</p>
								<p>
									<a class="nextBtn tel_next" onclick="xiayibu_an()">下一步</a>
								<!-- href="javascript:void(0)" -->
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer">
			<div class="foot_slide">
				<div class="kefu">
					<a>客服热线</a>
					<a>95543</a>
				</div>
				<div class="code">
					<span>
                    <img src="img/jj.jpg" /><br />
                    <a class="aaa">微信公众号</a>
                </span>
					<span>
                    <img src="img/22.png" /><br />
                    <a  class="aaa">QQ公众号</a>
                </span>
					<span>
                    <img src="img/gg.png" /> <br />
                    <a  class="aaa">支付宝服务窗</a>
                </span>
				</div>
			</div>
			<div class="dibu">
				<span class="copyright">
                © 2017.All RIGHT RESERVED.申通快递有限公司 版权所有
            </span>
				<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011802001016">
					<span class="records">
                    <img src="img/e.png" style="align-content:center;">
                    沪ICP备13037807号-1

                </span>
				</a>
			</div>
		</div>
	<script type="text/javascript " src="layui2/jquery.min.js"></script>
	<script type="text/javascript " src="layui2/layui.js"></script>
	<script type="text/javascript " src="layui2/layui.all.js"></script>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script>
		//下一步按钮验证码判断
		function xiayibu_an(){
			var photo = /^1[34578]\d{6}$/;//验证码正则
			var mobile_code=$("#code").val();//得到输入的验证码
			var mobile=$("#mobile").val();//得到手机号码
			
			$.ajax({
				type : "post",
				url : "http://localhost:8080/stoMaven/regin2.action",
				//data : "mobile=" + mobile,
				dataType : "json",
				success : function(msg) {
					//alert(msg.state);
					alert(msg.yzm);
					alert(mobile_code);
					if(mobile.length!=11){
						layer.msg("手机号格式不正确或不能为空！请重新填写!");
					}else if(mobile_code.length!=6){
						layer.msg("请重新填写6位数的验证码！");
					}else if (msg.yzm==mobile_code) {
						window.location.href="InputVerificationCode.jsp";//跳转页面到下一步		
					}else{
						layer.msg("该验证码错误！请重新填写！");
					}
				}
			})
				
			
				setCookie("phoneNumber",$("#mobile").val());
				/*将验证码存入cookie*/	
		}
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
						RemainTime2();
						layer.msg("发送成功！");
					} else if(msg.state=="剩余条数不足"){
						layer.msg("服务端剩余条数不足！");
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
			document.getElementById('sendFGPWDPhone').disabled = true;
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
					document.getElementById('sendFGPWDPhone').disabled = false;
				} else {
					Account = setTimeout("RemainTime2()", 1000);
					iTime = iTime - 1;
				}
			} else {
				sTime = '没有倒计时';
			}
			document.getElementById('sendFGPWDPhone').value = sTime;
		}
			$(function() {
				$("#iii").click(function(){
					$("#upshouji").text("邮箱：");
					$("#iii").attr('src','img/red.png');
					$("#ppp").attr('src','img/red2.png');
				});
				$("#ppp").click(function() {
					$("#upshouji").text("手机号：");
					$("#ppp").attr('src','img/red.png');
					$("#iii").attr('src','img/red2.png');
					
				});
			})
			
			//下一步按钮
			function xiayibu_an(){
				//判断验证码是否正确
//				if(判断验证码正确){
					alert($("#code").val()+$("#mobile").val());
					//将手机号码 存入cookie
					setCookie("phoneNumber",$("#mobile").val());
					//将验证码存入cookie
					setCookie("yanzhengma",$("#code").val());
					/*将验证码存入cookie*/
					window.location.href="InputVerificationCode.jsp";//跳转页面到下一步	
//				}else{
//					alert("验证码错误！")
//				}
				
			}
		</script>
	</body>

</html>