<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/User_Data_Update/css/jiazaitoubu.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/User_Data_Update/css/css.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/User_Data_Update/css/center.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/User_Data_Update/city/city.css"
	type="text/css" />

<!-- <script src="<%=request.getContextPath()%>/static/User_Data_Update/"></script> -->
<script
	src="<%=request.getContextPath()%>/static/User_Data_Update/js/jquery-1.8.3.min.js"></script>
<script
	src="<%=request.getContextPath()%>/static/User_Data_Update/js/index2.js"></script>
<script
	src="<%=request.getContextPath()%>/static/User_Data_Update/js/index2.js"></script>





<title>b哩b哩-登录密码修改</title>
</head>
<body>
	<div class="top" id="wyqtb">
		<!--热门搜索-->

		<!--导航-->
		<div class="dao_hang" style="background-color: #6C89B2;">


			<!--结束-->
						<div class="dao_list">
				<a href="logoone.sf">首页</a> <a href="javascript:return false;">视频收藏</a> <a href="Shopping.sf">周边</a>
				<a href="javascript:return false;">小黑屋</a>
			</div>
		</div>
	</div>
	<script>
window.onload=function(){
	$(".aside").css({display:"none"})
	$(".important").mouseenter(function(){
		$(".aside").css({display:"block"})
		}).mouseleave(function(){
			$(".aside").css({display:"none"})
			})
	}
</script>
	<!--当前位置-->
	<div class="now_positionm">
		<span>当前位置：</span><a href="logoone.sf">首页></a><a
			href="User_full_information.sf">个人中心</a>
	</div>
	<!--centers-->
	<div class="centers_m">
		<!--清除浮动-->
		<div class="clear_sm"></div>
		<!--left-->
		<div class="centers_ml">
			<!--头像-->
			<div class="center_header">
				<a href="User_full_information.sf"><img
					src="<%=request.getContextPath()%><%=request.getSession().getAttribute("userHand")%>" /></a>
				<em>您好，<font><%=request.getSession().getAttribute("userName")%></font></em> <font
					style="color: red; font-size: 11px;">(下方可修改资料~喵)</font>
			</div>
			<!--列表go-->
			<div class="centers_listm">
				<div class="centers_listm_one">
					<img
						src="<%=request.getContextPath()%>/static/User_Data_Update/images/zshy.png" />
					<em>会员中心</em>
				</div>
				<!--一条开始-->
				<div class="centers_listm_one_in">
					<img
						src="<%=request.getContextPath()%>/static/User_Data_Update/images/shezhi.png" />
					<em>资料管理</em> <b></b>
				</div>
				<span class="gjszmdm"> <a href="Information.sf"
					class="center_in_self"><font>信息资料</font></a> <a href="Bank_Card.sf"
					class="center_in_self"><font>银行卡管理</font></a> <a
					href="Delivery_address.sf" class="center_in_self"><font>收货地址管理</font></a>
				</span>
				<!--一条开始-->
				<div class="centers_listm_one_in">
					<%-- <img
						src="<%=request.getContextPath()%>/static/User_Data_Update/images/ddgl.png" />
					<em>订单管理</em> <b></b> --%>
				</div>
							<span class="gjszmdm"> <a href="Order.sf" class="center_in_self"><font>我的订单</font></a>
					<a href="DeletOrder" class="center_in_self"><font>已删除订单</font></a> <a
					href="javascript:return false;" class="center_in_self"><font>订单投诉</font></a>
				</span>

				<!--一条开始-->
				<div class="centers_listm_one_in">
					<%-- <img
						src="<%=request.getContextPath()%>/static/User_Data_Update/images/wdssc.png" />
					<em>收藏管理</em> <b></b> --%>
				</div>
				<!-- <span class="gjszmdm"> <a href="#" class="center_in_self"><font>店铺收藏</font></a>
					<a href="#" class="center_in_self"><font>菜品收藏</font></a>
				</span> -->

			</div>
			<script type="text/javascript">
		$(function(){//第一步都得写这个
			$(".centers_listm_one_in").click(function(){
			$(this).next(".gjszmdm").slideToggle().siblings("gjszmdm").slideUp()
			});
		})
		</script>
		</div>
		<!--一条开始-->
		<div class="public_m1">
			<div class="public_m2">个人信息修改</div>
			<!--提示信息-->
			<div class="tip_notem">
				<ul>
					<li>1.收货地址------屄理屄理喵</li>
					<li>2.为了您的方便，请尽量填写您常用的信息</li>
				</ul>
			</div>
			<form action="updateDelivery_address.sf" method="post">
			<div class="public_m4">
				<p>
					<em>您当前的登录账号：</em><i><%=request.getSession().getAttribute("userName")%></i>
				</p>
				<!--                <p>
                	<em>银行名称：</em>
                    <select style=" height:23px; border:1px solid #eaeaea">
                    	<option>-请选择-</option>
                        <option>中国工商银行</option>
                    </select>
                </p>-->
				<p>
					<em>用户真实名字：</em> <input type="text" name="usermingzi"
						style="height: 23px; border: 1px solid #eaeaea; width: 140px">
				</p>

				<p>
					<em>手机号：</em> <input type="text" name="userPhone"
						style="height: 23px; border: 1px solid #eaeaea; width: 140px">
				</p>
				
				<p>
					<em>收货地址：</em> <input type="text" name = "userAddress"
						style="height: 23px; border: 1px solid #eaeaea; width: 530px">
				</p>
				<p>
					<font style="color: red"><%=request.getAttribute("tishi") %></font>
				</p>

				<button class="public_m3" type="submit">保存修改</button>
			</div>
			</form>
		</div>
</body>
</html>