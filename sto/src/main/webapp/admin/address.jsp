<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link rel="stylesheet" href="css/pick-pcc.min.1.0.1.css" />
		<link rel="stylesheet" type="text/css" href="layuis/css/layui.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="css/address.css" />
		<link href="./img/sto.ico" rel="icon">
		<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="js/pick-pcc.min.1.0.1.js" ></script>
		<script type="text/javascript" src="js/pick-pcc.js" ></script>
		<script type="text/x-javascript" src="layuis/layer/layer.js"></script>
	</head>
	
	<body>
		<!-- 头部 -->
		<header>
			<div class="header">
				<div class="header_logstate">
					您好,180******63 <a style="cursor: pointer;color: #9b9b9b;">退出</a>
				</div>
			</div>
		</header>
		<!-- 头部结束 -->
		<!-- 导航 -->
		<nav>
			<div class="Nav_Inside">
				<div class="NavBox">
					<div class="Nav_logo">
						<img src="img/logo.png" alt="Logo" />
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
								<a href="query.jsp">运单查询</a>
							</li>
							<li>
								<a href="dingdan.jsp">订单管理</a>
							</li>
							<li>
								<a href="account.jsp" style="color: rgb(237, 105, 0);">账户管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!--主体-->
		<div id="bodyBack">
			<div id="center" style="padding-top: 25px;">
				<div class="center_one">
					<div class="title">
						<span>
							<img src="img/user.png" alt="帐户icon"/>
						</span>
						<span class="titleTest" style="padding-left: 12px;font-size: 22px;">帐号管理</span>
					</div>
					<div class="textcenter">
						<span><a href="account.jsp" style="text-decoration: none;">基本信息</a></span><br /><br /><br />
						<span><a href="address.css"  style="color: rgb(237, 105, 0);">地址中心</a></span><br /><br /><br />
						<span><a href="account.jsp" style="text-decoration: none;">帐号绑定</a></span><br /><br /><br />
						<span><a href="account.jsp" style="text-decoration: none;">月结客户</a></span><br /><br /><br />
						<span><a href="nameVerification.jsp"  style="text-decoration: none;">实名认证</a></span><br /><br /><br />
						<span><a href="account.jsp" style="text-decoration: none;">我的订阅</a></span><br />
					</div>
				</div>
				<!--查询-->
				<div class="center_two">
					<div class="two1">
						<form class="layui-form layui-form-pane" action="">
							<div class="layui-form-item" style="margin:18px;">
								<div class="layui-input-inline"lock;">
									<select name="quiz1" >
										<option value="">请选择查询方式</option>
										<option value="1">姓名</option>
										<option value="2">手机号</option>
									</select>
								</div>
								<div class="layui-input-inline">
									<input type="text" class="two2_center"
										maxlength="18" placeholder="可以输入姓名或电话" style="padding-left: 10px;"/>
								</div>
								<div class="layui-input-inline" style="width:100px;">
									<input type="button" class="two3_cente" value="搜索" />
								</div>
								<div class="layui-input-inline" style="width:90px;">
									<a class="two4_right" id="addss" style="color: white;line-height: 40px;cursor: pointer;" >+增加地址</a>
								</div> 
							</div>
						</form>
					</div>
					
					<!--修改-->
					<div class="two3">
						<table id="ttaa">
							<tr id="trr" style="height: 50px;">
								<th class="th1">姓名</th>
								<th class="th2">手机号</th>
								<th class="th3">座机号</th>
								<th class="th4">详细地址</th>
								<th class="th5">类别</th>
								<th class="th6">操作</th>
							</tr>
							<tr id="trrr" style="background-color: white;">
								<td>易烊千玺</td>
								<td>15675993103</td>
								<td>11122233</td>
								<td><span><span>北京市</span>/<span>市辖区</span>/<span>东城区</span></span><br><span>湖南省怀化市凤凰镇</span></td>
								<td>寄件人</td>
								<td>
									<span class="upAddress" style="cursor: pointer;">修改</span>
									<span>|</span>
									<span style="cursor: pointer;">删除</span>
								</td>
							</tr>
							
						</table>
					</div>
					<div id="two4"></div>
					
					<script>
					/*表单验证*/
					function sA(){
						var RealName=$("#RealName").val();
						var Mobile=$("#Mobile").val();
						var Phone=$("#Phone").val();
						var AreaAddress=$("#AreaAddresss").val();
						var Address=$("#xxAddress").val();
						var pattern=/^1[34578]\d{9}$/;
						
						if(RealName.length>0){
							if(Mobile.length>0||Phone.length>0){
								if(pattern.test(Mobile)){
									
								}else{
									layer.msg('手机号码格式不正确');
									return false;
								}
								if(AreaAddress.length>0){
									if(Address.length>0){
									return true;
									}else{
								layer.msg('详细地址不能为空');
								$("#Address").focus();
								return false;
							}
							}else{
								layer.msg('省市区不能为空');
								$("#AreaAddress").focus();
								return false;
							}
							}else{
								layer.msg('座机或手机必须填一个');
								$("#Mobile").focus();
								return false;
							}
						}else{
							layer.msg('姓名不能为空');
							$("#RealName").focus();
							return false;
						}
					}
						$(function(){
							function zmc(){
								var wh=$("body").width();
								var hi=$("body").height();
								$("#two4").css({
									width:wh,
									height:hi,
									display:'block',
								})
							}
							
							$("#addss").click(function(){
								zmc();
								$("#myTitle").text("新增地址");
								$("#myForm")[0].reset();
								$("#addAddress").show();
							});
							$(".upAddress").click(function(){
								zmc();
								$("#myTitle").text("修改地址");
								var spans = $(this).parent().siblings();
								$("#RealName").val(spans.eq(0).text());//名字
								$("#Mobile").val(spans.eq(1).text());//手机号码
								$("#Phone").val(spans.eq(2).text());//座机号码
								$(".pick-area").val(spans.eq(3).children().first().text());
								$(".pick-province").text(spans.eq(3).children().first().children().eq(0).text());
								$(".pick-city").text(spans.eq(3).children().first().children().eq(1).text());
								$(".pick-county").text(spans.eq(3).children().first().children().eq(2).text());
								$("#AreaAddresss").val(spans.eq(3).children().first().children().eq(0).text()+" "+spans.eq(3).children().first().children().eq(1).text()+" "+spans.eq(3).children().first().children().eq(2).text());
								$("#xxAddress").val(spans.eq(3).children().last().text());//详细地址
								if(spans.eq(4).text())
								$("#xxAddress").val();
								$("#addAddress").show();
							});
							$("#close").click(function(){
								$("#addAddress").css({display:'none'})
								$("#two4").css({display:'none'});
								
							});
						});
					</script>
					<!--新增-->	
					<div id="addAddress" class="addAddress" >
						<form id="myForm" onsubmit="return sA()">
						 <div class="fastentrydiv">
					        <a class="fastentry" onclick="Fastentry(1)" id="myTitle">增加地址</a>
					        <b><input type="button" value="X" id="close" style="padding-left: 5px;cursor: pointer;margin-left: 412px;"" /></b>
					     </div>
					        <p class="addPersonInfo addP ">
					            <label>姓名：</label>
					            <input type="text" class="addName" name="RealName" id="RealName" maxlength="11" />
					        </p>
					        <p class="addP">
					            <label>手机号：</label>
					            <input type="text" class="addTel" name="Mobile" id="Mobile" maxlength="13" />
					        </p>
					        <p class="addP">
					            <label>座机号：</label>
					            <input type="text" class="addTel" name="Phone" id="Phone" maxlength="13" />
					        </p>
					        <p class="addP addAddressInfo">
					            <label>省市区：</label>
					            <a href="javascript:void(0)" class="pick-area pick-area4" style="margin-left: 122px;margin-top: -40px;" ></a>
					            <input type="hidden"id="AreaAddresss"  name="AreaAddress">
					        </p>
					        <p class="addTar">
					            <label>详细地址：</label>
					            <textarea class="addTel" name="Address" id="xxAddress" maxlength="100" placeholder="请输入详细地址(例如xx路，xx号)"></textarea>
					        </p>
					        <p class="addP" style="margin-left: 55px;">
					            <label>设为默认地址</label> 
					            	<input type="checkbox" id="IsDefault" name="IsDefault" checked="checked" />
					            <label>寄件人地址</label>  
					            	<input type="radio" id="radioesd" name="AddressCategory" value="1" checked="checked" />
					            <label>收件人地址</label>  
					            	<input type="radio" id="radioesds" name="AddressCategory" value="2" />
					        </p>
					        <p class="btnBox">
					            <input type="reset" class="reser" value="重置" id="clearBtn" />
					            <input type="submit" id="submitbin" class="submit" value="提交" id="submitBtn" />
					        </p>
					        </form>
					</div>

				</div>
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
               		? 2017.All RIGHT RESERVED.申通快递有限公司 版权所有
               		<img src="img/ghs.png" style="background: #f0f4f5;margin-left: 30px; margin-top: 5px;" />
                   	<span style="color: #ed6a00;background-color: #f0f4f5;">沪ICP备13037807号-1</span>
				</span>
			</div>
		</div>
		
	</body>
	          
	<script src="layuis/layui.js" charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		layui.use(['form', 'layedit', 'laydate'], function(){
		  
		});
		
		
	</script>	
</html>



