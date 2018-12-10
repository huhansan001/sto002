<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>申通快递官网|客户的满意,申通的追求!</title>
		<link href="img/sto.ico" rel="icon">
 		<link rel="stylesheet" type="text/css" href="css/customerService.css" />
 		
 		<!--调用外部插件时间和地址联动-->
 		<link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css" />
 		<link rel="stylesheet" type="text/css" href="css/pick-pcc.min.1.0.1.css" />
 		
 		<link rel="stylesheet" type="text/css" href="./easyui/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="./easyui/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="./easyui/themes/color.css">
		<link rel="stylesheet" type="text/css" href="./easyui/demo.css">
		<script type="text/javascript" src="./easyui/jquery.min.js"></script>
		<script type="text/javascript" src="./easyui/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="Js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="Js/jquery-3.2.1.min.js"></script>
		
		<!--调用外部插件时间和地址联动-->
		<script type="text/javascript" src="timeJs/jquery.datetimepicker.js"></script>
		<script type="text/javascript" src="addressJs/pick-pcc.min.1.0.1.js"></script>
		<!--外部自定义js-->
		<script type="text/javascript" src="customJs/queryJs.js"></script>
		
	</head>
	<body style="margin: 0;padding: 0;">
		<center>
			<div class="head_mainDiv">
				<div class="head_Navigation">
					<!--主页上部1导航栏开始-->
					<div class="head_Navigation_textTitle">
						<a href="#">全国统一客服热线：95543</a>
						<b>|</b>
						<a href="#">企业邮箱</a>
						<b>|</b>
						<a href="login.jsp">登录</a>
						<b>|</b>
						<a href="regin.jsp">注册</a>
					</div>
					<!--主页上部1导航栏结束-->
					
					<!--主页上部2导航栏开始-->
					<div class="head_Navigation_mainTite"><!--第二个框框-->
						<img src="img/img_logo.png" id="img_logo" />
						<div class="Navigation_mainTite">
							<div class="Navigation_div_001">
								<a href="" class="Navigation_001">首页</a>
							</div>
							<div class="Navigation_div_002">
								<a href="" class="Navigation_002">关于申通</a>
								<div class="hover_head_Navigation_001">
									<ul class="Navifation_ul_text_001">
										<li class="text_li_biaoti_01">关于申通</li>
										<li><a href="">申通简介</a></li>
										<li><a href="">申通公益</a></li>
										<li><a href="">企业发展</a></li>
										<li><a href="">申通荣誉</a></li>
										<li><a href="">《申行者》</a></li>
										<li><a href="">企业理念</a></li>
										<li><a href="">寻求合作</a></li>
									</ul>
								</div>
							</div>
							<div class="Navigation_div_002">
								<a href="" class="Navigation_002">客户服务</a>
								<div class="hover_head_Navigation_002">
									<ul class="Navifation_ul_text_001">
										<li class="text_li_biaoti_01">客户服务</li>
										<li><a href="">运发查询</a></li>
										<li><a href="">网点查询</a></li>
										<li><a href="">在线下单</a></li>
										<li><a href="">咨询与投诉</a></li>
										<li><a href="">淘宝服务标准</a></li>
										<li><a href="">开放平台</a></li>
										<li><a href="">服务热线</a></li>
										<li><a href="">自助服务</a></li>
										<li><a href="">投诉服务热线</a></li>
									</ul>
								</div>
							</div>
							<div class="Navigation_div_003">
								<a href="" class="Navigation_002">产品服务</a>
								<div class="hover_head_Navigation_003">
									<div class="hover_head_Navigation_003_in_div">
										<ul class="Navifation_ul_text_001">
											<li class="text_li_biaoti_01">实效产品</li>
											<li><a href="">24小时次日达</a></li>
											<li><a href="">48小时隔日达</a></li>
											<li><a href="">72小时件</a></li>
										</ul>
									</div>
									<div class="hover_head_Navigation_003_in_div">
										<ul class="Navifation_ul_text_001">
											<li class="text_li_biaoti_01">数字产品</li>
											<li><a href="">打印专家</a></li>
											<li><a href="">电子面单</a></li>
											<li><a href="">开发平台</a></li>
										</ul>
									</div>
									<div class="hover_head_Navigation_003_in_div">
										<ul class="Navifation_ul_text_001">
											<li class="text_li_biaoti_01">增值服务</li>
											<li><a href="">上门取件</a></li>
											<li><a href="">代取件</a></li>
											<li><a href="">代收货款</a></li>
											<li><a href="">到付件</a></li>
											<li><a href="">保价服务</a></li>
											<li><a href="">服务管家</a></li>
											<li><a href="">签单返还</a></li>
										</ul>
									</div>
									<div class="hover_head_Navigation_003_in_div">
										<ul class="Navifation_ul_text_001">
											<li class="text_li_biaoti_01">冷链服务</li>
											<li><a href="">申雪冷运</a></li>
										</ul>
									</div>
									<div class="hover_head_Navigation_003_in_div">
										<ul class="Navifation_ul_text_001">
											<li class="text_li_biaoti_01">仓库服务</li>
											<li><a href="">仓配一体化</a></li>
										</ul>
									</div>
									<div class="hover_head_Navigation_003_in_div">
										<ul class="Navifation_ul_text_001">
											<li class="text_li_biaoti_01">电脑平台</li>
											<li><a href="">申鲜生活</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="Navigation_div_004">
								<a href="" class="Navigation_002">新闻资讯</a>
								<div class="hover_head_Navigation_004">
									<ul class="Navifation_ul_text_001">
										<li class="text_li_biaoti_01">新闻咨询</li>
										<li><a href="">公司动态</a></li>
										<li><a href="">公司公告</a></li>
										<li><a href="">行业新闻</a></li>
									</ul>
								</div>
							</div>
							<div class="Navigation_div_005">
								<a href="" class="Navigation_002">申通国际</a>
								<div class="hover_head_Navigation_005">
									<ul class="Navifation_ul_text_001">
										<li class="text_li_biaoti_01">申通国际</li>
										<li><a href="">国际网络</a></li>
										<li><a href="">国际官网</a></li>
										<li><a href="">国际商城</a></li>
									</ul>
								</div>
							</div>
							<div class="Navigation_div_006">
								<a href="" class="Navigation_002">招纳贤才</a>
								<div class="hover_head_Navigation_006">
									<ul class="Navifation_ul_text_001">
										<li class="text_li_biaoti_01">招纳贤才</li>
										<li><a href="">人才计划</a></li>
										<li><a href="">在线招聘</a></li>
										<li><a href="">校园招聘</a></li>
									</ul>
								</div>
							</div>
							<div class="Navigation_div_007">
								<a href="" class="Navigation_002">投资者关系</a>
								<div class="hover_head_Navigation_007">
									<ul class="Navifation_ul_text_001">
										<li class="text_li_biaoti_01">投资者关系</li>
										<li><a href="">公司公告</a></li>
										<li><a href="">公司治理</a></li>
										<li><a href="">财务信息</a></li>
										<li><a href="">投资者联络</a></li>
										<li><a href="">股票走势</a></li>
										<li><a href="">投资者互动</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="head_Navigation_left"></div><!--左侧填充div-->
					<div class="head_Navigation_right"></div><!--右侧填充div-->
					<!--主页上部2导航栏结束-->
					
					<!--主页图鉴导航开始-->
					<div class="main_img_Navigation"></div>
					<!--主页图鉴导航结束-->
				</div>
			</div>
			
			<!--身体div开始-->
			<div class="body_div_main">
				<!--内容主板开始_左边-->
				<div class="content_main_001_lift">
					<div class="cotent_div_01_top">
						客户服务
					</div>
					<ul class="content_ul_01_text">
						<li><a class="content_ul_li_a_text_ha1" href="">运费查询</a></li>
						<li><a class="content_ul_li_a_text_ha2" href="">网点查询</a></li>
						<li><a class="content_ul_li_a_text_ha2" href="login.jsp" id="zaixian">在线下单</a></li>
						<li><a class="content_ul_li_a_text_ha2" href="">投诉服务热线</a></li>
						<li><a class="content_ul_li_a_text_ha2" href="">淘宝服务标准</a></li>
						<li><a class="content_ul_li_a_text_ha2" href="">咨询与投诉</a></li>
						<li><a class="content_ul_li_a_text_ha2" href="">服务热线</a></li>
						<li><a class="content_ul_li_a_text_ha2" href="">自助服务</a></li>
					</ul>
				</div>
				<!--内容主板结束_左边-->
				
				<!--内容主板开始_中间-->
				<div class="content_main_001_center">
					<div class="content_main_001_center_nei_top_01">
						运费查询
					</div>
					<div class="text_tong_yi">
						<span class="text_tishi_type_001"><b class="tishi_type_fuhao_001">*</b>&nbsp;始发地&nbsp;&nbsp;&nbsp;</span>
						<a style="margin-top: -50px;margin-left: 100px;" href="javascript:void(0)" class="pick-area pick-area4" name="新疆维吾尔自治区/博尔塔拉蒙古自治州"></a>
						<input style="display: none;" type="text" name="" id="IP_dizhi_001" value="" placeholder="请选择省市区" />
					</div>
					<div class="text_tong_yi">
						<span class="text_tishi_type_001"><b class="tishi_type_fuhao_001">*</b>&nbsp;目的地&nbsp;&nbsp;&nbsp;</span>
						<a style="margin-top: -50px;margin-left: 100px;" href="javascript:void(0)" class="pick-area pick-area4" name="新疆维吾尔自治区/博尔塔拉蒙古自治州"></a>
						<input style="display: none;" type="text" name="" id="IP_dizhi_002" value="" placeholder="请选择省市区" />
					</div>
					<div class="text_tong_yi">
						<span class="text_tishi_type_001"><b class="tishi_type_fuhao_001">*</b>&nbsp;物品重量</span>
						<input type="text" name="" id="kg_input_01" value="" placeholder="" /><span class="tishi_kg">kg</span>
					</div>
					<div class="text_tong_yi">
						<span class="text_tishi_type_001"><b class="tishi_type_fuhao_001">*</b>&nbsp;寄件时间</span>
						<input type="text" id="dateTime" class="datetimepicker8  date" readonly="readonly" placeholder="YY-MM-DD hh:mm" />
					</div>
					<a type="button" onclick="chaxun_an_001()" class="chaxun_a_001">查询</a>
					
				</div>
				
				<div class="content_main_001_center_bottom">
					<table border="0" cellspacing="" cellpadding="">
						<tr>
							<th class="tishi_text_table_th_001">预计到达时间</th>
							<th class="tishi_text_table_th_001">现付参考价格</th>
						</tr>
						<tr>
							<td class="tishi_text_table_td_001" id="dateTimeShow"> </td>
							<td class="tishi_text_table_td_001" id="cankaojiage"> </td>
						</tr>
					</table>
					<div class="tishi_div_bottom_001">
						1.以上时效为预计到达时间，仅供参考， 精准时效以运单追踪中的“签收时间”为准
						<br />
						2.以上价格仅供参考，具体以寄件地申通市场价格为准，到付件价格请咨询当地申通网点
						<br />
						3.快件限重20KG，超重快件会影响派送时效
						<br />
						4.还有部分乡镇暂未开通服务，详情咨询95543 或在”网点查询”栏目中查询 
					</div>
				</div>
				
				<img class="img_zhuangshi_001" src="img/Advertisement03.png"/>
					<img class="img_zhuangshi_002" src="img/Advertisement02.png"/>
					<img class="img_zhuangshi_003" src="img/Advertisement01.png"/>
				
				<!--内容主板结束_中间-->
			</div>
			<!--身体div结束-->
			<!--尾部div-->
			<div class="footer_div_main"></div>
		</center>
	</body>
	
</html>