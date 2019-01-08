<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link href="./img/sto.ico" rel="icon">
   		<link rel="stylesheet" href="css/query.css" />
   		<script type="text/javascript" src="../Js/myCookie.js"></script>
	</head>
	<body>
	<%-- <%!HttpServletResponse response;HttpServletRequest request;%>
	<%
		if(request.getSession().getAttribute("orderList")==null){
			response.sendRedirect(request.getContextPath()+"/orderAll.action");
		}
	%> --%>
		<!-- 头部 -->
		<header>
			<div class="header">
				<div class="header_logstate">
					<span>您好,<span class="daohangtishiyonghu"></span></span> <span class="user_out">退出</span>
				</div>
			</div>
		</header>
		<!-- 头部结束 -->
		<!-- 导航 -->
		<nav>
			<div class="Nav_Inside">
				<div class="NavBox">
					<div class="Nav_logo">
						<img  src="img/logo.png" alt="Logo"/>
					</div>
					<div class="Nav_li">
						<ul>
							<li>
								<a href="BackHome.jsp">首页 </a>
							</li>
							<li>
								<a href="Mailing.jsp" >在线寄件</a>
							</li>
							<li>
								<a href="query.jsp"  style="color: rgb(237, 105, 0);">运单查询</a>
							</li>
							<li>
								<a href="dingdan.jsp">订单管理</a>
							</li>
							<li>
								<a href="#" class="code_hu">账户管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		
		<!--主体-->
		<section>
			<div id="central">
				<div class="central_one">
					<div id="central_two">
						<img src="img/search.png"  alt="搜素" style="padding-left: 15px;" />
						<span style="font-size: 18px; color: #555;">运单查询</span>
					</div>
					<div class="central_three">
						<input type="text" class="central_chBox" id="orders" maxlength="25"
							placeholder="请输入申通快递单号" />
						<input type="button" id="btn" class="central_chBen" value="搜索"/>
					</div>
					   <div id="central_four">
                	   		<img src="img/chaxun.png"  style="padding-left: 15px;"/>
                	   		<span style="font-size: 18px; color: #555;">查询结果</span>
                	   </div>
                	 <div id="central_five">
                	 	<span class="five_one">运单号</span><span class="five_two">运单最新状态</span><span class="five_three">操作</span>
                	 </div>  
                	 <!--隐藏的DIV-->
             		<div class="central_six">
             			  <div>
             			  		<div class="central_mark">
             			  			
             			  		</div>
             			  		<div class="central_state">
             			  			
             			  		</div>
             			  		<div class="central_do">
             			  			<a id="central_dot">查询时效路由</a>
             			  			<a >订阅</a>
             			  		</div>
             			  </div>
             			  <div class="titles">
	             			  <!-- <span class="central_little">福建泉州转运中心-已装袋发往-湖南长沙转运中心</span><br />
	             			  <span class="central_little">2018-12-04 00:09:45</span><br /><br />
	             			  <span class="central_little">福建泉州转运中心-已装袋发往-湖南长沙转运中心</span><br />
	             			  <span class="central_little">2018-12-04 00:09:45</span><br /><br /> -->
             			  </div >
             		<!-- |||||||||||||||||||||||||||||||||||||||||||| -->
				</div>
             	
			</div> 
		</section>
		<!-- 底部 -->
		<footer>
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
						<img src="img/chat_code.jpg" />
						<img src="img/qq_code.png" />
						<img src="img/pay_code.png" />
						<div>
							<span>微信公众号</span>
							<span>QQ公众号</span>
							<span>支付宝服务窗</span>
						</div>
					</div>
				</div>
			</div>

		</footer>
		<!-- 版权 -->
		<div class="copyright">
			<div class="copy">
				<span class="copyright">
               		©  2017.All RIGHT RESERVED.申通快递有限公司 版权所有
               		<img src="img/ghs.png" style="background: #f0f4f5;margin-left: 30px;" />
                   	<span style="color: #ed6a00;background-color: #f0f4f5;">沪ICP备13037807号-1</span>
				</span>
			</div>
		</div>
		<!--加载JS-->
		<script src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="layui/layer/layer.js" ></script>
	</body>
	<script type="text/javascript">
	$(".code_hu").click(function(){
		window.location.href="http://localhost:8080/stoMaven/selectAll.action?phoneNumber="+getCookie("loginPhone");
	});
		$(".user_out").click(function(){
			window.location.href="../login.jsp";
		});
		$(function(){
			$(function(){
				$(".daohangtishiyonghu").text(getCookie("loginPhone"));
			});
			/*-------------*/
			$(".central_chBen").click(function(){
				var values=$("#orders").val();
				if(values.length>0){
					$.ajax({
						type : "post",
						url : "http://localhost:8080/stoMaven/selectWaybill.action",
						data : 'values='+values,
						dataType : "json",
						async : false,
						success : function(msg) {
							if(msg.length>0){
								$(".central_mark").text(msg[0].waybillNumber);
								$(".central_state").text(msg[msg.length-1].shuttleState);
								for (var i = 0; i < msg.length; i++) {
									$(".titles").append(
									"<span class='central_little'>"+msg[i].routingState+"</span><br />"+
									"<span class='central_little'>"+msg[i].shuStaTime+"</span><br /><br />")
								}
								$(".central_six").show();
							}else{
								layer.msg('运单号不正确');
							}
						}
					});
				}else{
					layer.msg('请输入运单号');
				}
				//$("#central_six").css("height","95px");
			})
			var temp = 0;
			
			$("#central_dot").click(function(){
				if(temp==0){
					$(".central_little").show();
					
					$(".titles").css("display","block");
					temp = 1;
				}else if(temp == 1){
					$(".central_little").hide();
					$(".titles").css("display","none");
					//$("#central_six").css("height","95px");
					temp=0;
				}
			})
			
		})
		
	</script>
</html>