<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link href="img/sto.ico" rel="icon">
		<link rel="stylesheet" href="css/head1.css" />
		<script src="Js/jquery.min.js"></script>
		<script type="" src="jquery/jquery-3.2.1/jquery-3.2.1.js"></script>
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
					<img src="img/img_logo.png" />
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
							<p><span class="num on" id="two" style="background: #EE6A00;">2</span></p>
							<p>输入验证码</p>
						</div>
						<div class="plan" >
							<div class="planing two" style="width: 100%;"></div>
						</div>
						<div class="planTxt">
							<p><span class="num" id="three" style="background: #EE6A00;">3</span></p>
							<p>重设密码</p>
						</div>
						<div class="plan">
							<div class="planing three" style="width: 50%;"  ></div>
						</div>
						<div class="planTxt">
							<p><span class="num" id="four">✔</span></p>
							<p>设置成功</p>
						</div>
					</div>
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
									<label id="upshouji">输入密码：</label>
									<input type="text" class="emaliTxt" id="mobile" />
								</p>
								<p>
									<label id="yanzNum">确认新密码：</label>
									<input type="text" class="verifyTxt" id="code" />
									<input type="button" id="sendFGPWDPhone" class="sendVerifyBox" value="发送验证码" />
								</p>
								<p>
									<a class="chooseBtn s_back" href="">上一步</a>
                        			<a class="chooseBtn s_next" href="pass.jsp" id="xiayibu">下一步</a>
								</p>
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

		<script>
		$(function() {
			$("#iii").click(function(){
			
				$("#upshouji").text("邮箱：");
				$("#yanzNum").text("验证码：");
				$("#iii").attr('src','img/red.png');
				$("#ppp").attr('src','img/red2.png');
			});
			$("#ppp").click(function() {
				$("#upshouji").text("输入密码：");
				$("#yanzNum").text("确认新密码：");
				$("#ppp").attr('src','img/red.png');
				$("#iii").attr('src','img/red2.png');
				
			});
		})
			$("#xiayibu").click(function(){
				window.location.href="pass.jsp";
			})
		</script>
	</body>
</html>