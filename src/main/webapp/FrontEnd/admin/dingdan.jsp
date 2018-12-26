<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>订单查询</title>
		<link rel="stylesheet" href="css/dingdan.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../Js/myCookie.js"></script>
		<div class="header">
				<div class="header_logstate">
					<span>您好,<span class="daohangtishiyonghu"></span> <span class="user_out">退出</span>
				</div>
		</div>
	</head>
	<body>
		<nav>
			<div class="Nav_Inside">
				<div class="NavBox">
					<div class="Nav_logo">
						<img src="img/logo.png" class="orders" alt="Logo" />
					</div>
					<div class="Nav_li">
						<ul>
							<li class="code_shou">
								<a href="BackHome.jsp" class="code_ye">首页 </a>
							</li>
							<li class="code_zai">
								<a href="Mailing.jsp" class="code_xian">在线寄件</a>
							</li>
							<li class="code_yun">
								<a href="query.jsp" class="code_cha">运单查询</a>
							</li>
							<li class="code_ding">
								<a href="dingdan.jsp" class="code_guan" style="color: rgb(237, 105, 0);">订单管理</a>
							</li>
							<li class="code_zhang">
								<a href="account.jsp" class="code_hu">账户管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<div id="header">
	    	<div id="header1">	
	    		<div id="header5" style="background-color: white;">
	    			<span style="background-color: white;">
	    				<img src="img/order.png" class="order" alt="订单icon">
	    				<span class="titleText">订单管理</span>
	    			</span>    			
	    		</div>
	    		<ul id="ul">
						<li>
							<a onclick="xiugai01()" id="tishi01" href="#" style="color: #ed6800;">全部订单</a>
						</li>
						<li>
							<a onclick="xiugai02()" id="tishi02" href="#">处理中</a>
						</li>
						<li>
							<a onclick="xiugai03()" id="tishi03" href="#">已取消</a>
						</li>
						<li>
							<a onclick="xiugai04()" id="tishi04" href="#">已完成</a>
						</li>
				</ul>		
	    	</div>
	    	<div id="header2">
	    		<div id="header3">
	    			<input type="text" class="orderSearchBox"
	    			  maxlength="25" placeholder="请输入申通快递订单编号">
	    			  <input type="button" class="orderSearchBtn" value="搜索">
	    		</div>
	    		<div id="header4">
	    			<table border="0" cellspacing="" cellpadding="">
	    				<tr>
	    					<th class="cc"><input type="checkbox" name="" id="" value="" /></th>
	    					<th class="aa" style="border-left: 1px solid #e5e5e5;border-right: 1px solid #e5e5e5;">订单编号</th>
	    					<th class="dd">寄件人 > 收件人</th>
	    					<th class="ee" style="border-left: 1px solid #e5e5e5;border-right: 1px solid #e5e5e5;">下单时间</th>
	    					<th class="ff">操作</th>
	    				</tr>
	    			</table>
	    		</div>
	    		<table id="biaodan" border="0" cellspacing="" cellpadding="">
	    			<tr>
	    				<th class="form_one"><input class="fuxuan_an" type="checkbox"/></th>
	    				<th class="form_two"><img class="quxiao_img_logo" src="img/quxiao.png"/>ST18339110109058</th>
	    				<th class="form_three"><span style="color: #ed6c00;background: white;">长沙市</span> 狗子> <span style="color: #ed6c00;background: white;">长沙市</span> 快件 处理中</th>
	    				<th class="form_four">2018-12-05 11:55:19</th>
	    				<th class="form_five">
	    					<a id="quxiao_an_dingdan" href="#" style="text-decoration: none;color: #ed6c00; background: white;">取消订单  |</a>
	    					<a id="zailai_an_yidan" href="#" style="text-decoration: none;color: #ed6c00; background: white;">再来一单</a> 
	    				</th>
	    			</tr>
	    		</table>
	    	</div>
		</div>
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
               		<a style="color: #7585a6;">© 2017.All RIGHT RESERVED.申通快递有限公司 版权所有</a>
               		<img src="img/ghs.png" style="background: #f0f4f5;margin-left: 30px;" />
                   	<span style="color: #ed6a00;background-color: #f0f4f5;">沪ICP备13037807号-1</span>
				</span>
			</div>
		</div>
		<script type="text/javascript">
			$(function(){
				$(".daohangtishiyonghu").text(getCookie("loginPhone"));
			});
			$(".user_out").click(function(){
				window.location.href="../login.jsp";
			});
			
			$("#quxiao_an_dingdan").click(function(){
				/*alert(1);*/
				$(".quxiao_img_logo").css("display","block");
				$("#quxiao_an_dingdan").css("display","none");
				$(".fuxuan_an").css("display","none");
			})
			
			
			/*搜索*/
			$(".orderSearchBtn").click(function(){
				//里面添加ajax提交方式 用得到的值判断
				alert("抱歉！数据中没有此订单号！");
			})
			function xiugai01(){
				$("#tishi01").css("color","#ED6800");
				$("#tishi02").css("color","#000");
				$("#tishi03").css("color","#000");
				$("#tishi04").css("color","#000");
			}
			function xiugai02(){
				$("#tishi01").css("color","#000");
				$("#tishi02").css("color","#ED6800");
				$("#tishi03").css("color","#000");
				$("#tishi04").css("color","#000");
			}
			function xiugai03(){
				$("#tishi01").css("color","#000");
				$("#tishi02").css("color","#000");
				$("#tishi03").css("color","#ED6800");
				$("#tishi04").css("color","#000");
			}
			function xiugai04(){
				$("#tishi01").css("color","#000");
				$("#tishi02").css("color","#000");
				$("#tishi03").css("color","#000");
				$("#tishi04").css("color","#ED6800");
			}
		</script>
	</body>
</html>
