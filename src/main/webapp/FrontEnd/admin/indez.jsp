<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link href="./img/sto.ico" rel="icon">
		<link rel="stylesheet" href="css/xiadan.css"/>
		<script type="text/javascript" src="js/jquery-3.2.1.js" ></script>
		<script type="text/javascript" src="../Js/myCookie.js"></script>
	</head>
	<body>
		<div class="header">
				<div class="header_logstate">
					<span>您好,180******63</span> <span class="user_out">退出</span>
				</div>
		</div>
		<nav>
			<div class="Nav_Inside">
				<div class="NavBox">
					<div class="Nav_logo">
						<img src="img/logo.png" class="orders" alt="Logo" />
					</div>
					<div class="Nav_li">
						<ul>
							<li class="code_shou">
								<a href="javascript:void(0)" class="code_ye">首页 </a>
							</li>
							<li class="code_zai">
								<a href="javascript:void(0)" class="code_xian">在线寄件</a>
							</li>
							<li class="code_yun">
								<a href="javascript:void(0)" class="code_cha">运单查询</a>
							</li>
							<li class="code_ding">
								<a href="javascript:void(0)" class="code_guan">订单管理</a>
							</li>
							<li class="code_zhang">
								<a href="javascript:void(0)" class="code_hu">账户管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<div id="shenti">
			<!--<img src="img/2018-12-27_154741.png" style="display: inline-block;"/>-->
			<input class="jixuxiadan" type="button" value="继续下单">
			<input class="chakandingdan" type="button" value="查看订单">
			<div style="width: 200px;height: 30px;background-color: #f3f3f3;position: absolute;top: 685px;left: 865px;"></div>
		</div>
	</body>
	<footer>
			<div class="foot_slide">
				<div class="foot_chi">
					<div class="kefu">
						<p style="margin-top: 50px; background-color: white;">
							<a style="background-color: white;">客服热线</a>
						</p>
						<p style="margin-top: 20px; background-color: white;">
							<a style="background-color: white;">95543</a>
						</p>
					</div>
					<div class="code"  style="background-color: white;">
						<img src="img/chat_code.jpg" />
						<img src="img/qq_code.png" />
						<img src="img/pay_code.png" />
						<div  style="background-color: white;">
							<span style="background-color: white;">微信公众号</span>
							<span style="background-color: white;">QQ公众号</span>
							<span style="background-color: white;"> 支付宝服务窗</span>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<div class="copyright">
			<div class="copy">
				<span class="copyright">
               		<a style="color: #7585a6;"> © 2017.All RIGHT RESERVED.申通快递有限公司 版权所有</a>
               		<img src="img/ghs.png" style="background: #f0f4f5;margin-left: 30px;" />
                   	<span style="color: #ed6a00;background-color: #f0f4f5;">沪ICP备13037807号-1</span>
				</span>
			</div>
		</div>
	<script>
	//继续下单
		$(".jixuxiadan").click(function(){
			var remarks= getCookie("remarks");
			//调用业务表的新增方法
			$.ajax({
				type:"post",
				url:"http://localhost:8080/stoMaven/serviceTable_xwc.action",
				data:remarks,
				dataType:"text",
				success : function(msg){	
					window.location.href="Mailing.jsp";
				}
			});
			alert(12);
		});
	//查看订单
		$(".chakandingdan").click(function(){
			var remarks= getCookie("remarks");
			//调用业务表的新增方法
			$.ajax({
				type:"post",
				url:"http://localhost:8080/stoMaven/serviceTable_xwc.action",
				data:remarks,
				dataType:"text",
				success : function(msg){		
					window.location.href="dingdan.jsp";
				}
			});
			alert(22);
		});
	</script>
</html>