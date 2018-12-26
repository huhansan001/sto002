<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<title>个人首页</title>
		<link rel="stylesheet" href="./css/bottom.css" />
		<script type="text/javascript" src="js/jquery-3.3.1.js" ></script>
		<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="../Js/myCookie.js"></script>
	</head>
	<body>
		<!-- 头部 -->
		<header>
			<div class="header">
				<div class="header_logstate">
					<span>您好,<span class="daohangtishiyonghu"></span></span>
					<span class="user_out"><a href="../login.jsp">退出</a></span>
				</div>
			</div>
		</header>
		<!-- 头部结束 -->
		<!-- 导航 -->
		<nav>
			<div class="Nav_Inside">
				<div class="NavBox">
					<div class="Nav_logo">
						<img src="./img/5.png" alt="Logo" />
					</div>
					<div class="Nav_li">
						<ul>
							<li>
								<a href="BackHome.jsp" style="color: rgb(237, 105, 0);">首页 </a>
							</li>
							<li>
								<a href="Mailing.jsp">在线寄件</a>
							</li>
							<li>
								<a href="query.jsp">运单查询</a>
							</li>
							<li>
								<a href="dingdan.jsp">订单管理</a>
							</li>
							<li>
								<a href="account.jsp">账户管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
      <div class="meuser">
		<div class="serua">
		    <div class="serua-box">
		    <div class="serua-lik">
		    	<div class="serua-cont">
		    	<img src="./img/1.png"style="width:100px; height:100px ;" />
		    	</div>
		    	<div class="serua-gek">
		    	<span class="a">Hi,<span class="daohangtishiyonghu"></span></span>
		    	<span class="d" style="color: #ea6a00;"><a href="account.jsp"  style="color: #ea6a00;">修改>></a></span>
		    	</div>
		    </div>
		    <div class="serua-lit">
		    	<div>
		    		<span class="b" >信息完整度</span>
		    	</div>
		    	<div class="zhengzhao" id="zhengzhao"></div>
		    	<script type="text/javascript">
		    		$(function(){
		    			$(".daohangtishiyonghu").text(getCookie("loginPhone"));
		    		});
		    	</script>
		    	<script>
		    		$(function(){
		    			var hi=("body").height();
		    			var wh=("body").width();
		    			$("#zhengzhao").css({'height':hi,'width':wh});
		    		})
		    	</script>
		    	<div class="layui-progress layui-progress-big"style="display:inline-block;width: 110px;height:16px;margin-left: 40px;">
                               <div class="layui-progress-bar layui-bg-orange" lay-percent="45%" style="width: 45%;height:16px;background-color: rgb(237, 105, 0);">
                               	<span class="c" style="margin-top: 1px;">45%</span>
                               <div id="layui-layer-content" class="layui-layer-content" style="height: 500px;">
                               	<div class="browser layui-layer-wrap" id="isRealName" style="display: block;">
                               		     <a class="layui-layer-ico layui-layer-close layui-layer-close2" id="close" href="javascript:;"></a>
                               		     <script>
                               		     	$(function(){
                               		     		$("#close").click(function(){
                               		     			$("#zhengzhao").hide();
                               		     			$("#layui-layer-content").hide();
                               		     		});
                               		     		
                               		     	})
                               		     	
                               		     </script>
                                   <p><img   src="./img/7.png"></p>
                                   <p>亲，该实名登记啦</p>
                                   <p>根据国家邮政最新规定，寄收快递必须实名登记</p>
                                   <p>
                                   	<a class="downLoad" href="nameVerification.jsp">点击实名</a>
                                   </p>
      						  </div>
     	                          </div>
                          
                               </div>
                         </div>
                         
                         	<span class="e" style="color: #ea6a00;"><a href="#"  style="color: #ea6a00;">完善信息>></a></span>
					</div>
		    </div>
		    </div>
	    </div>
	 </div>
	
	<div class="serua-pot"style="background:#f0f4f5; color:black;height:650px ;">
	<div class="mar">
			<div class="div1">
				<div style="height:238px;background:#fe8a4d; color:black; -moz-border-radius:5px 0px 0px 5px;   -webkit-border-radius:5px 0px 0px 5px;     border-radius:5px 0ox;0px 5px align-content: inherit;">
					 <div class="serua-ze"style="display: inline-block; solid white;width: 70px;height: 20px;margin-left: 30px;margin-top: 10px;font:15px Helvetica Neue,Helvetica,PingFang SC,微软雅黑,Tahoma,Arial,sans-serif;color: white;">
			     			运单查询
			   		  </div>
					<textarea type="text" placeholder="请输入申通快递单号，单号须用英文逗号隔开，最多可以输入10个单号" name="lname" rows="" cols="" style="width:280px;height:140px;border:1px solid #ffffff;border-radius: 10px; resize:none;margin-left:23px;margin-top:7px;font-size:14px ;padding-top:10px ;color: #555;"></textarea>
					<div>
						<button style="border-radius:30px;margin-left: 210px; width:92px;height:34px;margin-top:10px;color: red;background:#ffe99d;border:0px;">追踪</button>
					</div>
				</div>
			</div><div class="div2">
				<img src="./img/4.png" width="100px" height="100px"style="margin-top: 40px; margin-left:100px;">
				<span class="k"><a href="Mailing.jsp"  style="color:#555555;">在线寄件</a></span>
			</div><div class="div3" >
				<div class="cc"></div>
				<img src="./img/10.png" width="100px" height="100px"style="margin-top: 25px; margin-left:100px;">
				<span class="l"><a href="../customerService.jsp"  style="color: #555555;">报价时效查询</a></span>
			</div>
		</div>
		<div class="serua-tue" style="border: 1px solid #ededed;border-radius: 6px;">
			<div class="serua-hop">
				<ul style=" margin-top:9px;width:74%;height: 25px;margin-left:10px;text-align: center;">
                        <li style="width: 25%; float: left;list-style: none;" class="all on order">全部订单</li>
                        <li style="width: 10%; float: left;list-style: none;" class="hand order">处理中</li>
                        <li style="width: 12%; float: left;list-style: none;"class="cancel order">已取消</li>
                        <li style="width: 12%; float: left;list-style: none;" class="finish order">已完成</li>
                    </ul>
			</div>
			<table cellspacing="0" cellpadding="0" border="0"style="margin-top:5px; margin-left:30px;background:#f5f5f5; color:black;">
                    <tbody>
                    	<tr class="orderTableTitle">
                        <td style="width:180px; height:60px;text-align: center;" class="order">运单号</td>
                        <td style="width:371px;text-align: center;" class="order">寄件人 &gt; 收件人</td>
                        <td class="order" style="width:242px;text-align: center; border-left: 1px solid #e5e5e5; border-right: 1px solid #e5e5e5;">下单时间</td>
                        <td class="order" style="width:142px;text-align: center;">操作</td>
                    </tr>
                </tbody>
			</table>
		</div>
		    <div class="news_list">
                    <table id="newsList">
                    	<table>         
                    		<tbody>
                    			<tr>              
                    				<td class="tableOrder" style="width:200px"style="margin-top:40px;">                 
                    					<a class="addresColor" id="addres" href="/Order/Detail?OrderId=ST18340190379313" style="text-decoration: none;display:inline-block;margin-bottom: 21px;">	
                    						<img src="./img/canncel.png" alt="已取消"><br />                     
                    						<span style="font-size: 14px;color: #ed6c00;" id="addresColors">ST18340190379313</span>                                 
                    					</a>             
                    				</td>             
                    				<td class="tablePerson" style="width:380px;margin-top:20px;">                 
                    					<span class="addresColor"style="font-size: 14px;color: #ed6c00;">钦州市</span><span class="addresColors">滴姐&gt;</span>  
                    					<span class="addresColor"style="font-size: 14px;color: #ed6c00;">松原市</span><span class="addresColors">啥事 快件 已取消</span>            
                    				</td>              
                    				<td class="tableTime" style="width:210px">                 
                    					<span></span>
                    					<span class="addresColors">2018-12-06 19:30:10</span>             
                    				</td>             
                    				<td class="tablelOperate">                                  
                    					<a class="addresColor btnBox"style="font-size: 14px;color: #ed6c00;">已取消</a>                                  
                    					<input type="hidden" class="hiddenOrderId" value="ST18340190379313">             
                    				</td>         
                    			</tr>     
                    		</tbody>
                    	</table>
                    </table>
                </div>
	</div>
		<!-- 底部 -->
		<footer style="background: white;margin-top: 50px;">
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
						<img src="./img/chat_code.jpg" />
						<img src="./img/qq_code.png" />
						<img src="./img/pay_code.png" />
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
               		? 2017.All RIGHT RESERVED.申通快递有限公司 版权所有
               		<img src="./img/ghs.png" style="background: #f0f4f5;margin-left: 30px; margin-top: 5px;" />
                   	<span style="color: #ed6a00;background-color: #f0f4f5;">沪ICP备13037807号-1</span>
				</span>
			</div>
		</div>
	</body>
</html>

