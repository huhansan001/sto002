<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>申通快递|会员中心|客户的满意,申通的追求!</title>
		<link href="./img/sto.ico" rel="icon">
		<link rel="stylesheet" type="text/css" href="css/account.css" />
		<link rel="stylesheet" type="text/css" href="css/pick-pcc.min.1.0.1.css"/>
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="layui/laydate/laydate.js"></script>
		<script type="text/javascript" src="js/pick-pcc.min.1.0.1.js"></script>

</head>
<body style="background: #f0f4f5;font-size: 12px">
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
		<!-- 主体 -->
		<div id="body">
			<div id="w1">
				<div id="title">
					<span id="titleImg"><img src="img/user.png" /></span>
					<span id="titleText">账户管理</span>
				</div>
				<ul id="ul">
					<li>
						<a href="#" style="color:#ee6900 ;">基本信息</a>
					</li>
					<li>
						<a href="address.jsp">地址中心</a>
					</li>
					<li>
						<a href="#">账号绑定</a>
					</li>
					<li>
						<a href="#">月结客户</a>
					</li>
					<li>
						<a href="nameVerification.jsp">实名认证</a>
					</li>
					<li>
						<a href="#">我的订阅</a>
					</li>
				</ul>
			</div>
			<div id="w2">
				<div id="titleBox">
					<span id="spaceText">个人信息</span>
					<a href="#" id="editImg"><img src="img/edit.png" /></a>
				</div>
				<div id="header">

				</div>
				<div id="userInfoBox">
					<div id="line">
						<div id="l_left">
							<label>姓名：</label>
							<input type="text" id="userText" name="UserName" value="">
						</div>
						<div id="l_right">
							<label>生日:</label>
							<input id="d11" class="date" type="text" name="Birthday" value="">

						</div>
					</div>
					<div id="line_2">
						<div id="l2_left">
							<label>手机：</label>
							<input type="text" id="userText" name="mobile" value="13107217772">
						</div>
						<div id="l2_right">
							<label>性别:</label>
							<input id="d11" type="text" name="sex" value="">
						</div>
					</div>
					<div id="line_3">
						<div id="l3_left">
							<label style="display:inline-block;margin-top: 14px;">省市区：</label>
							<a href="javascript:void(0)" class="pick-area pick-area4" id="cityfont" style="margin-top: -30px; margin-left: 62px;font-size: 14px;background: white;"></a>
							<input type="hidden" id="userText" name="city" value="" style="position: relative;left:40px;">
						</div>
						<div id="l3_right">
							<label>详细地址:</label>
							<textarea id="d12" type="text" name="HomeAddress" value=""></textarea>
						</div>
					</div>
				</div>
				<div id="space">
					<span id="spaceText">验证信息</span>
				</div>
				<div id="vContent">

				</div>
				<div id="space">
					<span id="spaceText">密码设置</span>
				</div>
				<div id="footer">
					<p>
						<span>登陆后修改您的申通账号密码</span>
						<a href="../wjmm1.jsp">修改>></a>
					</p>
				</div>
			</div>
		</div>
		<!--
        	作者：offline
        	时间：2018-12-06
        	描述：底部
        -->
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
		<script type="text/javascript">
		</script>
		<script>
			//自定义格式
			laydate.render({
				elem: '.date',
				format: 'yyyy年MM月dd日'
			});
			$(function() {
				/*联动地址*/
				$(".pick-area4").pickArea({
					"format": "province/city/county", //格式
					"width": "260", //设置“省市县”文本边框的宽度
					"height": "40", //设置“省市县”文本边框的高度
					"borderColor": "#ededed;", //设置“省市县”文本边框的色值
					"arrowColor": "#ededed;", //设置下拉箭头颜色
					"listBdColor": "#ededed;", //设置下拉框父元素ul的border色值
					"color": "#ededed;", //设置“省市县”字体颜色
					"fontSize": "13px", //设置字体大小
					"hoverColor": "#435abd",
					"paddingLeft": "8px", //设置“省”位置处的span相较于边框的距离
					"arrowRight": "10px", //设置下拉箭头距离边框右侧的距离
					"maxHeight": "300px",
					"background": "#000",
					//"preSet":"",//数据初始化 ；这里的数据初始化有两种方式，第一种是用preSet属性设置，第二种是在a标签里使用name属性设置
					"getVal": function() { //这个方法是每次选中一个省、市或者县之后，执行的方法
						var thisdom = $("." + $(".pick-area-dom").val()); //返回的是调用这个插件的元素pick-area，$(".pick-area-dom").val()的值是该元素的另一个class名，这个class名在dom结构中是唯一的，不会有重复，可以通过这个class名来识别这个pick-area
						thisdom.next().val($(".pick-area-hidden").val()); //$(".pick-area-hidden").val()是页面中隐藏域的值，存放着每次选中一个省、市或者县的时候，当前文本存放的省市县的最新值，每点击一次下拉框里的li，这个值就会立即更新
					}
				});
			});
		</script>
	</body>
</html>