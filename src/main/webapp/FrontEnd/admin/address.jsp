<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link rel="stylesheet" href="FrontEnd/admin/css/pick-pcc.min.1.0.1.css" />
		<link rel="stylesheet" type="text/css" href="FrontEnd/admin/layuis/css/layui.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="FrontEnd/admin/css/address.css" />
		<link href="FrontEnd/admin/./img/sto.ico" rel="icon">
		<script type="text/javascript" src="FrontEnd/admin/js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="FrontEnd/admin/js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="FrontEnd/admin/js/pick-pcc.min.1.0.1.js" ></script>
		<script type="text/javascript" src="FrontEnd/admin/js/pick-pcc.js" ></script>
		<script type="text/x-javascript" src="FrontEnd/admin/layuis/layer/layer.js"></script>
		<script type="text/javascript" src="FrontEnd/Js/myCookie.js"></script>
	</head>
	
	<body>
		<!-- 头部 -->
		<header>
			<div class="header">
				<div class="header_logstate">
					您好,<span class="daohangtishiyonghu"></span> <a class="user_out" style="cursor: pointer;color: #9b9b9b;">退出</a>
				</div>
			</div>
		</header>
		<!-- 头部结束 -->
		<!-- 导航 -->
		<nav>
			<div class="Nav_Inside">
				<div class="NavBox">
					<div class="Nav_logo">
						<img src="FrontEnd/admin/img/logo.png" alt="Logo" />
					</div>
					<div class="Nav_li">
						<ul>
							<li>
								<a href="FrontEnd/admin/BackHome.jsp">首页 </a>
							</li>
							<li>
								<a href="FrontEnd/admin/Mailing.jsp" >在线寄件</a>
							</li>
							<li>
								<a href="FrontEnd/admin/query.jsp">运单查询</a>
							</li>
							<li>
								<a href="FrontEnd/admin/dingdan.jsp">订单管理</a>
							</li>
							<li>
								<a href="FrontEnd/admin/account.jsp" style="color: rgb(237, 105, 0);">账户管理</a>
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
							<img src="FrontEnd/admin/img/user.png" alt="帐户icon"/>
						</span>
						<span class="titleTest" style="padding-left: 12px;font-size: 22px;">帐号管理</span>
					</div>
					<div class="textcenter">
						<span><a href="FrontEnd/admin/account.jsp" style="text-decoration: none;">基本信息</a></span><br /><br /><br />
						<span><a href="FrontEnd/admin/address.css"  style="color: rgb(237, 105, 0);">地址中心</a></span><br /><br /><br />
						<span><a href="FrontEnd/admin/account.jsp" style="text-decoration: none;">帐号绑定</a></span><br /><br /><br />
						<span><a href="FrontEnd/admin/account.jsp" style="text-decoration: none;">月结客户</a></span><br /><br /><br />
						<span><a href="FrontEnd/admin/nameVerification.jsp"  style="text-decoration: none;">实名认证</a></span><br /><br /><br />
						<span><a href="FrontEnd/admin/account.jsp" style="text-decoration: none;">我的订阅</a></span><br />
					</div>
				</div>
				<!--查询-->
				<div class="center_two">
					<div class="two1">
						<form class="layui-form layui-form-pane" action="">
							<div class="layui-form-item" style="margin:18px;">
								<div class="layui-input-inline"lock;">
									<select id="xuanze" name="quiz1" >
										<option value="">请选择查询方式</option>
										<option value="1">姓名</option>
										<option value="2">手机号</option>
									</select>
								</div>
								<div class="layui-input-inline">
									<input type="text" class="two2_center"
										maxlength="18" id="textKuang" placeholder="可以输入姓名或电话" style="padding-left: 10px;"/>
								</div>
								<div class="layui-input-inline" style="width:100px;">
									<input type="button" id="sousuo" class="two3_cente" value="搜索" />
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
							
							<!-- 循环打印部分开始 -->
							<%-- <c:forEach items="${Address_lqlAllList }" var="addressvar">
							<tr id="trrr" style="background-color: white;">
								<td>${addressvar.recipName} </td>
								<td>${addressvar.recipMobile} </td>
								<td>${addressvar.recipPhone}</td>
								<td><span>${addressvar.recipAddress}</span><br><span>${addressvar.recipDetailed}</span></td>
								<td>${addressvar.recipType}</td>
								<td>
									<span class="upAddress" onclick="xiugai1('${addressvar.recipientId}')" style="cursor: pointer;">修改</span>
									<span>|</span>
									<span style="cursor: pointer;" onclick="shsanchushoujian('${addressvar.recipientId}')">删除</span>
								</td>
							</tr>
								<c:forEach items="${addressvar.senderList }" var="sendervar">
								<tr id="trrr" style="background-color: white;">
									<td>${sendervar.senderName} </td>
									<td>${sendervar.senderMobile} </td>
									<td>${sendervar.senderPhone}</td>
									<td><span>${sendervar.senderAddress}</span><br><span>${sendervar.senderDetailed}</span></td>
									<td>${sendervar.senderType}</td>
									<td>
										<span class="upAddress" onclick="xiugai2('${sendervar.senderId}')" style="cursor: pointer;">修改</span>
										<span>|</span>
										<span style="cursor: pointer;" onclick="shanchujijian('${sendervar.senderId}')">删除</span>
									</td>
								</tr>
								</c:forEach>
							
							</c:forEach> --%>
							
								<c:forEach items="${list[0] }" var="addressvar">
								<tr id="trrr" style="background-color: white;">
									<td>${addressvar.recipName} </td>
									<td>${addressvar.recipMobile} </td>
									<td>${addressvar.recipPhone}</td>
									<td><span>${addressvar.recipAddress}</span><br><span>${addressvar.recipDetailed}</span></td>
									<td>${addressvar.recipType}</td>
									<td>
										<span class="upAddress" onclick="xiugai1('${addressvar.recipientId}')" style="cursor: pointer;">修改</span>
										<span>|</span>
										<span style="cursor: pointer;" onclick="shsanchushoujian('${addressvar.recipientId}')">删除</span>
									</td>
								</tr>
								</c:forEach>
								<c:forEach items="${list[1] }" var="sendervar">
								<tr id="trrr" style="background-color: white;">
									<td>${sendervar.senderName} </td>
									<td>${sendervar.senderMobile} </td>
									<td>${sendervar.senderPhone}</td>
									<td><span>${sendervar.senderAddress}</span><br><span>${sendervar.senderDetailed}</span></td>
									<td>${sendervar.senderType}</td>
									<td>
										<span class="upAddress" onclick="xiugai2('${sendervar.senderId}')" style="cursor: pointer;">修改</span>
										<span>|</span>
										<span style="cursor: pointer;" onclick="shanchujijian('${sendervar.senderId}')">删除</span>
									</td>
								</tr>
								</c:forEach>
							
							
							<!-- 循环打印部分结束 -->
							
						</table>
					</div>
					<div id="two4"></div>
					
					<script type="text/javascript">
						$(".user_out").click(function(){
							window.location.href="FrontEnd/login.jsp";
						});
						//删除收件表信息
						function shsanchushoujian(recipientId){
							alert(recipientId);
							alert("cookie="+getCookie("loginPhone"));
							$.ajax({
								type:"post",
								url:"deleteaddress_lql.action",
								data:"recipientId="+recipientId+"&userInfoPhone="+getCookie("loginPhone"),
								dataType:"text",
								success:function(m){
									window.location.replace("http://localhost:8080/stoMaven/selectaddress_lqlAll.action?userInfoPhone="+getCookie("loginPhone"));
								}
							});
						}
						//删除寄件表信息
						function shanchujijian(senderId){
							alert(senderId);
							$.ajax({
								type:"post",
								url:"deleteSender.action",
								data:"senderId="+senderId+"&userInfoPhone="+getCookie("loginPhone"),
								dataType:"text",
								success:function(m){
									window.location.replace("http://localhost:8080/stoMaven/selectaddress_lqlAll.action?userInfoPhone="+getCookie("loginPhone"));
								}
							});
						}
						
						
						//模糊查询
						$("#sousuo").click(function(){
							var xuan = $("#xuanze").val();
							//通过名字查询
							if(xuan == 1){
								alert(xuan);
								var name = $("#textKuang").val();//得到名字
								//跳转后台的名字模糊查询
								window.location.href="http://localhost:8080/stoMaven/selectaddressByName.action?recipName="+name+"&senderName="+name+"&userInfoPhone="+getCookie("loginPhone");
								
								//通过手机号查询
							}else if(xuan == 2){
								var phone = $("#textKuang").val();//得到手机号
								//跳转后台的手机号模糊查询
								window.location.href="http://localhost:8080/stoMaven/selectaddressByPhone.action"+"?recipMobile="+phone+"&senderMobile="+phone+"&userInfoPhone="+getCookie("loginPhone");
								
							}
						});
					</script>
					
					<script>
					var anIfNum = 0;
					var recipientId = 0;
					//修改收件人,寄件人表信息
					/* $(".upAddress").click(function(){
						alert(1);
						anIfNum = 1;
					}); */
					function xiugai1(id){
						alert(id);
						recipientId = id;
						anIfNum = 1;
					}
					function xiugai2(id){
						alert(id);
						recipientId = id;
						anIfNum = 1;
					}
					
					$("#addss").click(function(){
						alert(2);
						anIfNum = 2;//用户判断点击此处是用户新增
					});
					
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
									//判断当anIfNum为2时为新增按钮
									if(anIfNum==2){
										//新增方法
										alert($('input[name="AddressCategory"]:checked').val());
										if($('input[name="AddressCategory"]:checked').val()==1){
											var senderName = "senderName="+$("#RealName").val();
											var senderMobile = "&senderMobile="+$("#Mobile").val();
											var senderPhone = "&senderPhone="+$("#Phone").val();
											var senderAddress = "&senderAddress="+$("#AreaAddresss").val();
											var senderDetailed = "&senderDetailed="+$("#xxAddress").val();
											var senderType = "&senderType=寄件人";
											var userInfoPhone = "&userInfoPhone="+getCookie("loginPhone");
											alert(senderName+senderMobile+senderPhone+senderAddress+senderDetailed+senderType+userInfoPhone);
											$.ajax({
												type:"post",
												url:"insertSender.action",
												data:senderName+senderMobile+senderPhone+senderAddress+senderDetailed+senderType+userInfoPhone,
												dataType:"text",
												success:function(m){
													window.location.href="http://localhost:8080/stoMaven/selectaddress_lqlAll.action?userInfoPhone="+getCookie("loginPhone");
												}
											});
											//判断是否是收件人表信息
										}else if($('input[name="AddressCategory"]:checked').val()==2){
											var recipName = "recipName="+$("#RealName").val();
											var recipMobile = "&recipMobile="+$("#Mobile").val();
											var recipPhone = "&recipPhone="+$("#Phone").val();
											var recipAddress = "&recipAddress="+$("#AreaAddresss").val();
											var recipDetailed = "&recipDetailed="+$("#xxAddress").val();
											var recipType = "&recipType=收件人";
											var userInfoPhone = "&userInfoPhone="+getCookie("loginPhone");
											alert(recipName+recipMobile+recipPhone+recipAddress+recipDetailed+recipType+userInfoPhone);
											$.ajax({
												type:"post",
												url:"insertaddress_lql.action",
												data:recipName+recipMobile+recipPhone+recipAddress+recipDetailed+recipType+userInfoPhone,
												dataType:"text",
												success:function(m){
													window.location.href="http://localhost:8080/stoMaven/selectaddress_lqlAll.action?userInfoPhone="+getCookie("loginPhone");
												}
											});
										}
										//判断当 anIfNum为1时为修改按钮
									}else if(anIfNum==1){
										//修改方法
										alert($('input[name="AddressCategory"]:checked').val());
										if($('input[name="AddressCategory"]:checked').val()==1){
											var senderName = "senderName="+$("#RealName").val();
											var senderMobile = "&senderMobile="+$("#Mobile").val();
											var senderPhone = "&senderPhone="+$("#Phone").val();
											var senderAddress = "&senderAddress="+$("#AreaAddresss").val();
											var senderDetailed = "&senderDetailed="+$("#xxAddress").val();
											var senderType = "&senderType=寄件人";
											var userInfoPhone = "&userInfoPhone="+getCookie("loginPhone");
											alert(senderName+senderMobile+senderPhone+senderAddress+senderDetailed+senderType+userInfoPhone);
											$.ajax({
												type:"post",
												url:"updateSender.action",
												data:senderName+senderMobile+senderPhone+senderAddress+senderDetailed+senderType+userInfoPhone+"&recipientId="+recipientId,
												dataType:"text",
												success:function(m){
													window.location.href="http://localhost:8080/stoMaven/selectaddress_lqlAll.action?userInfoPhone="+getCookie("loginPhone");
												}
											});
											//判断是否是收件人表信息
										}else if($('input[name="AddressCategory"]:checked').val()==2){
											var recipName = "recipName="+$("#RealName").val();
											var recipMobile = "&recipMobile="+$("#Mobile").val();
											var recipPhone = "&recipPhone="+$("#Phone").val();
											var recipAddress = "&recipAddress="+$("#AreaAddresss").val();
											var recipDetailed = "&recipDetailed="+$("#xxAddress").val();
											var recipType = "&recipType=收件人";
											var userInfoPhone = "&userInfoPhone="+getCookie("loginPhone");
											alert(recipName+recipMobile+recipPhone+recipAddress+recipDetailed+recipType+userInfoPhone);
											$.ajax({
												type:"post",
												url:"updateaddress_lql.action",
												data:recipName+recipMobile+recipPhone+recipAddress+recipDetailed+recipType+userInfoPhone+"&recipientId="+recipientId,
												dataType:"text",
												success:function(m){
													window.location.href="http://localhost:8080/stoMaven/selectaddress_lqlAll.action?userInfoPhone="+getCookie("loginPhone");
												}
											});
										}
									}
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
							$(".daohangtishiyonghu").text(getCookie("loginPhone"));
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
								$(".pick-province").text(spans.eq(3).children().first().text().split(" ")[0]);
								$(".pick-city").text(spans.eq(3).children().first().text().split(" ")[1]);
								$(".pick-county").text(spans.eq(3).children().first().text().split(" ")[2]);
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
						<form id="myForm" onsubmit="return false;">
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
					            <input type="button" onclick="sA()" id="submitbin" class="submit" value="提交" id="submitBtn" />
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
						<img src="FrontEnd/admin/img/chat_code.jpg" />
						<img src="FrontEnd/admin/img/qq_code.png" />
						<img src="FrontEnd/admin/img/pay_code.png" />
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
               		<img src="FrontEnd/admin/img/ghs.png" style="background: #f0f4f5;margin-left: 30px; margin-top: 5px;" />
                   	<span style="color: #ed6a00;background-color: #f0f4f5;">沪ICP备13037807号-1</span>
				</span>
			</div>
		</div>
		
	</body>
	          
	<script src="FrontEnd/admin/layuis/layui.js" charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		layui.use(['form', 'layedit', 'laydate'], function(){
		  
		});
		
		
	</script>	
</html>



