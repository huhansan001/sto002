<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link href="./img/sto.ico" rel="icon">
		<link rel="stylesheet" type="text/css" href="css/Mailing.css" />
		<link rel="stylesheet" href="css/pick-pcc.min.1.0.1.css">
		<script src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="js/pick-pcc.min.1.0.1.js"></script>
		<script type="text/javascript" src="layui/laydate/laydate.js" ></script>
		<script type="text/javascript" src="layui/layer/layer.js" ></script>
		<script src="js/Mailing.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="../Js/myCookie.js"></script>
	</head>

	<body>
		<!-- 头部 -->
		<header>
			<div class="header">
				<div class="header_logstate">
					<span>您好,<span class="daohangtishiyonghu"></span></span> <span class="user_out">退出</span>
				</div>
			</div>
		</header>
		<script type="text/javascript">
			$(function(){
				$(".daohangtishiyonghu").text(getCookie("loginPhone"));
			});
			$(".user_out").click(function(){
				window.location.href="../login.jsp";
			});
		</script>
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
								<a href="Mailing.jsp" style="color: rgb(237, 105, 0);">在线寄件</a>
							</li>
							<li>
								<a href="query.jsp">运单查询</a>
							</li>
							<li>
								<a href="dingdan.jsp">订单管理</a>
							</li>
							<li>
								<a href="account.jsp" >账户管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!--广告位-->
		<div class="Advertisement">
			<div class="Advertisement_img">
				<img src="img/banner.png" width="1280px;" height="300px" />
			</div>
		</div>
		<!--主体-->
		<section>
			<div class="content">
				<!-- 下单 -->
				<div class="ordertype">
					<div class="title">
						<p>选</p>
						<p>择</p>
					</div>
					<div class="ordertype_btn">
						<a class="signalorder" href="javascript:void(0)" style="margin-left: 250px;">单件下单</a>
						<a class="signalorder" href="javascript:void(0)">批量下单</a>
					</div>
				</div>
				<!-- 寄件 -->
				<div class="sendUser">
					<form id="Mailing">
						<div class="title">
							<p style="padding-top:53px;">寄</p>
							<p>件</p>
							<p>人</p>
							<p>信</p>
							<p>息</p>
						</div>
						<div class="leftSend">
							<div class="leftSendtext">
								<div style="margin-top: 67px;"></div>
								<div>姓名:</div>
								<div style="margin-top: 40px;">发货地址:</div>
								<div style="margin-top: 40px;">座机号码:</div>
								<div style="margin-top: 40px;">付款方式:</div>
							</div>
							<div class="leftSendinput">
								<div style="margin: 20px 0;color: #ee6900;border: 0 none;">
									<a>寄件人智能录入</a>
								</div>
								<div style="margin: 20px 0;color: #ee6900;border: 1px solid #ededed;">
									<input type="text" id="userName" name="userName" placeholder="请输入寄件人姓名" />
									<a class="order_address_list btn_Addressee" >
										<img id="i1" src="img/order.png" width="35" height="35">
									</a>
								</div>
								<div style="margin: 20px 0;color: #ee6900;border: 0px none;" id="one">
									<a href="javascript:void(0)" class="pick-area pick-area4" id="addressA"></a>
									<!--地址-->
									<input type="hidden" id="address" name="address">
								</div>
								<div style="margin: 20px 0;color: #ee6900;border: 1px solid #ededed;">
									<input type="text" placeholder="请输入寄件人座机号码" id="Landline" name="Landline"/>
								</div>
								<div style="margin: 20px 0;color: #ee6900;border: 0 none;">
									<select id="PayType" class="PayType" onchange="func()">
										<option value="请选择付款方式">请选择付款方式</option>
										<option value="现付">现付</option>
										<option value="到付">到付</option>
										<option value="月结">月结</option>
									</select>
								</div>
							</div>
						</div>
						<div class="rightSend">
							<div class="rightSendtext">
								<div style="margin-top: 57px;"></div>
								<div>手机号码:</div>
								<div style="margin-top: 40px;">详细地址:</div>
								<div style="margin-top: 40px;">邮箱:</div>
							</div>
							<div class="rightSendinput">
								<div style="margin-top: 46px;border: 0 none;"></div>
								<div style="margin: 20px 0;color: #ee6900;"><input type="text" name="phone" id="phone" placeholder="请输入寄件人手机号码" /></div>
								<div style="margin: 20px 0;color: #ee6900;"><input type="text" name="DetailedAddress" id="DetailedAddress" placeholder="请输入详细地址(例如xx路，xx号)" /></div>
								<div style="margin: 20px 0;color: #ee6900;"><input type="text" name="mailbox" id="mailbox" placeholder="此邮箱用于接受下单进度提醒" /></div>
							</div>
						</div>
					</form>
				</div>
				<!-- 收件 -->
				<div class="putUser">
					<form id="Receipt">
						<div class="title">
							<p style="padding-top:53px;">收</p>
							<p>件</p>
							<p>人</p>
							<p>及</p>
							<p>物</p>
							<p>品</p>
							<p>信</p>
							<p>息</p>
						</div>
						<div class="topput">
							<div class="leftput">
								<div class="lefttext">
									<div style="margin-top: 67px;">姓名:</div>
									<div style="margin-top: 42px;">收件地址:</div>
									<div style="margin-top: 36px;">座机号码:</div>
								</div>
								<div class="leftinput">
									<div style="margin: 20px 0;color: #ee6900;">
										<a>收件人智能录入</a>
									</div>
									<div style="margin: 20px 0;color: #ee6900;border: 1px solid #ededed;width: 320px;border-radius: 4px;">
										<input type="text" id="ReceiptName" placeholder="请输入收件人姓名" style="width: 277px;border: none;" />
										<a class="order_address_list btn_Addressee">
											<img id="i2"  src="img/order.png" width="35" height="35">
										</a>
									</div>
								<!--	jQuery 遮罩层 -->
									<div id="fullbg"></div> 
									<!--收件人-->
									<div class="Addressee">
										<div class="layui-layer-title" style="cursor: move;padding: 0;">
											<span id="i3" style="display: inline-block;margin-left: 20px;">收件人信息</span>
											<a class="close" href="javascript:;">X</a>
										</div>
	
										<table  class="layui-table">
											<thead>
												<tr>
													<th>类别</th>
													<th>姓名</th>
													<th>手机号</th>
													<th>地址</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody id="tbody">
											
											</tbody>
										</table>
									</div>
									<script type="text/javascript">
											function s(q,w,e,r){
												$("#userName").val(w);
												$("#phone").val(e);
												$("#address").val(r);
												//將地址放入地址框中
												$(".pick-area").val(r);
												var splitstr=r.split(" ");
												$("#one .pick-province").text(splitstr[0]);
												$("#one .pick-city").text(splitstr[1]);
												$("#one .pick-county").text(splitstr[2]);
												//关闭灰色 jQuery 遮罩 
												$("#fullbg,#dialog").hide(); 
												$(".Addressee").animate({
													height: "0px",
												}, 700, function() {
													$(".Addressee").css("display", "none");
													$(".Addressee").css({
														"width": "350px",
														"height": "480px"
													});

												});
											}
											
											function m(q,w,e,r){
												
												$("#ReceiptName").val(w);
												$("#ReceivingPhone").val(e);
												$("#ReceivingAddress").val(r);
												//將地址放入地址框中
												$(".pick-area").val(r);
												var splitstr=r.split(" ");
												$("#two .pick-province").text(splitstr[0]);
												$("#two .pick-city").text(splitstr[1]);
												$("#two .pick-county").text(splitstr[2]);
												
												//关闭灰色 jQuery 遮罩 
												$("#fullbg,#dialog").hide(); 
												$(".Addressee").animate({
													height: "0px",
												}, 700, function() {
													$(".Addressee").css("display", "none");
													$(".Addressee").css({
														"width": "350px",
														"height": "480px"
													});

												});
											}
									</script>
									<div style="margin: 15px 0;color: #ee6900;" id="two">
										<a href="javascript:void(0)" class="pick-area pick-area4" id="ReceivingAddressA"></a>
										<!--地址-->
										<input type="hidden" id="ReceivingAddress" name="ReceivingAddress">
									</div>
									<div style="margin: 15px 0;color: #ee6900;"><input type="text" id="ReceivingMachine" name="ReceivingMachine"placeholder="请输入收件人座机号码" /></div>
								</div>
							</div>
							<div class="rightput">
								<div class="righttext">
									<div style="margin-top: 57px;"></div>
									<div>手机号码:</div>
									<div style="margin-top: 40px;">详细地址:</div>
									<div style="margin-top: 40px;">物品数量:</div>
								</div>
								<div class="rightinput">
									<div style="margin-top: 46px;"></div>
									<div><input type="text"  id="ReceivingPhone" name="ReceivingPhone"  placeholder="请输入收件人手机号码" /></div>
									<div style="margin: 20px 0;color: #ee6900;"><input type="text" id="DetailedAddressReceipt" name="DetailedAddressReceipt" placeholder="请输入详细地址(例如xx路，xx号)" /></div>
									<div style="margin: 20px 0;color: #ee6900;"><input type="text" id="weight" name="weight" placeholder="物品重量(KG)" /></div>
								</div>
							</div>
						</div>
						<div class="cenput">
							<label>物品类型:</label>
							<span><input type="radio" checked  name="DeliveryGoods" value="文件">文件</span>
							<span><input type="radio"  name="DeliveryGoods" value="服饰">服饰</span>
							<span><input type="radio"  name="DeliveryGoods" value="食品">食品</span>
							<span><input type="radio"  name="DeliveryGoods" value="数码用品">数码用品</span>
							<span><input type="radio"  name="DeliveryGoods" value="生活用品">生活用品</span>
							<span><input type="radio"  name="DeliveryGoods" value="其他" id="elseDeliveryGoods">其他</span>
							<span><a id="priceSearch"> 查询时效路由</a></span>
						</div>
						<div class="foontput">
							<label>预计到达时间:</label>
							<span><input id="Time" name="Time" class="o1" readonly="readonly"  placeholder="通过查询时效路由"></span>
							<label style="margin-left: 55px;">预计价格:</label>
							<span><input id="Time" name="Time" class="o2" readonly="readonly"  placeholder="通过查询时效路由"></span>
						</div>
					</form>
				</div>
				<!-- 取件 -->
				<div class="remark">
					<form id="PickParts">
						<div class="title">
							<p style="padding-top:53px;">取</p>
							<p>件</p>
							<p>信</p>
							<p>息</p>
						</div>
						<div class="remarkContent">
							<div class="time">
								<label>上门取件时间：</label>
								<input type="text" class="layui-input date" id="date1" name="date1" readonly="readonly" placeholder="请选择取件日期" />
								<input type="text" class="layui-input date" id="timebegin" name="timebegin"  readonly="readonly" placeholder="请选择开始时间" >
								<input type="text" class="layui-input date" id="timeend" name="timeend"  readonly="readonly" placeholder="请选择结束时间" />
								<span style="color:#ed6a00;margin-left:14px;">下午16:30以后下单，第二日取件</span>
							</div>
							<div class="remarkInput">
								<label>备注信息：</label>
								<textarea id="CustomerMessage" name="CustomerMessage" placeholder="您可以在此备注您的需求,例如:请带文件袋,来前电话,需要胶带等需求"></textarea>
							</div>
	
						</div>
					</form>
				</div>
				<!-- 提交 -->
				<div class="submitBox">
					<p class="protocol">
						<input type="checkbox"  checked="checked">
						<span>我愿意遵守</span><a href="javascript:void()" onclick="Show()" style="color:#ed6a00">《申通快递服务协议》</a>
					</p>
					<p class="submitBtn">
						<input type="button" id="orderSubmit" value="提交订单">
					</p>
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
               		© 2017.All RIGHT RESERVED.申通快递有限公司 版权所有
               		<img src="img/ghs.png" style="background: #f0f4f5;margin-left: 30px;" />
                   	<span style="color: #ed6a00;background-color: #f0f4f5;">沪ICP备13037807号-1</span>
				</span>
			</div>
		</div>
	</body>

</html>