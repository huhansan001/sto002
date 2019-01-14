<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%!HttpServletRequest request;HttpServletResponse response;%>
	<%
		if(request.getSession().getAttribute("orderAll")==null){
			response.sendRedirect(request.getContextPath()+"/OrderManagementsss.action?type=1");
		}
	%>
	<head>
		<meta charset="UTF-8">
		<title>订单查询</title>
		<link rel="stylesheet" href="css/dingdan.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../Js/myCookie.js"></script>
		<script type="text/javascript" src="layui/layer/layer.js"></script>
		<div class="header">
				<div class="header_logstate">
					<span>您好,<span class="daohangtishiyonghu"></span> <span class="user_out">退出</span>
				</div>
		</div>
	</head>
	<body style="background-color: whitesmoke;">
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
								<a href="#" class="code_hu">账户管理</a>
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
	    		<script type="text/javascript">
	    			$(function(){
	    				$("#tishi0${type}").css("color"," #ed6800");
	    			})
	    		</script>
	    		<ul id="ul">
						<li>
							<a onclick="xiugai('',1)" id="tishi01" href="#" >全部订单</a>
						</li>
						<li>
							<a onclick="xiugai('处理中',2)" id="tishi02" href="#">处理中</a>
						</li>
						<li>
							<a onclick="xiugai('已取消',3)" id="tishi03" href="#">已取消</a>
						</li>
						<li>
							<a onclick="xiugai('已完成',4)" id="tishi04" href="#">已完成</a>
						</li>
				</ul>		
	    	</div>
	    	<div id="header2">
	    		<div id="header3">
	    			<input type="text" class="orderSearchBox"
	    			  maxlength="25" placeholder="请输入申通快递订单编号">
	    			  <input type="button" class="orderSearchBtn" style="cursor: pointer;" value="搜索">
	    		</div>
	    		<div id="header4">
	    			<table border="0" cellspacing="" cellpadding="">
	    				<tr style="background-color: whitesmoke;">
	    					<th class="cc"><input type="checkbox" name="" id="" value="" /></th>
	    					<th class="aa" style="border-left: 1px solid #e5e5e5;border-right: 1px solid #e5e5e5;">订单编号</th>
	    					<th class="dd">寄件人 > 收件人</th>
	    					<th class="ee" style="border-left: 1px solid #e5e5e5;border-right: 1px solid #e5e5e5;">下单时间</th>
	    					<th class="ff">操作</th>
	    				</tr>
	    			</table>
	    		</div>
	    		<table id="biaodan" border="0" cellspacing="" cellpadding="">
	    			<c:forEach items="${orderAll}" var="x">
	    			<tr>
	    				<th class="form_one"><input class="fuxuan_an" type="checkbox"/></th>
	    				<th class="form_two"><img class="quxiao_img_logo" src="img/quxiao.png"/>${x.orderNumber}</th>
	    				<th class="form_three"><span style="color: #ed6c00;background: white;">${x.senderAddress}</span> ${x.uplaceName }> <span style="color: #ed6c00;background: white;">${x.sendsAddress }</span> ${x.userName } ${x.orderStatus }</th>
	    				<th class="form_four">${x.orderTime}</th>
	    				<th class="form_five">
	    					<a id="quxiao_an_dingdan" href="javascript:;" style="text-decoration: none;color: #ed6c00; background: white;">取消订单  |</a>
	    					<a id="zailai_an_yidan" href="javascript:;" style="text-decoration: none;color: #ed6c00; background: white;">再来一单</a> 
	    				</th>
	    			</tr>
	    			</c:forEach>
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
			$(".code_hu").click(function(){
				window.location.href="http://localhost:8080/stoMaven/selectAll.action?phoneNumber="+getCookie("loginPhone");
			});
			$(function(){
				$(".daohangtishiyonghu").text(getCookie("loginPhone"));
			});
			$(".user_out").click(function(){
				window.location.href="../login.jsp";
			});
			
			
			/*搜索*/
			$(".orderSearchBtn").click(function(){
				var ss=$(".orderSearchBox").val();
				if(ss>0){
					window.location.href="http://localhost:8080/stoMaven/OrderManagementsss.action?orderNumber="+$(".orderSearchBox").val()+"&type=1";
				}else{
					layer.msg("订单号不能为空");
				}
			})
			function xiugai(resule,type){
				if(resule==""){
					window.location.href="http://localhost:8080/stoMaven/OrderManagementsss.action?type="+type;
				}else{
					window.location.href="http://localhost:8080/stoMaven/OrderManagementsss.action?orderStatus="+resule+"&type="+type;
				}
			}
			
		</script>
		 <%request.getSession().setAttribute("orderAll", null);%> 
	</body>
</html>
