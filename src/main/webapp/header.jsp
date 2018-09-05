<%@ page language="java" pageEncoding="utf-8"%>
<div class="header1">
	<div ng-if='user!=""' class="header1-cont">
		<div class="left">
			<span style="margin-right:20px;" class="pull-left">
				<a href="index.jsp">首页</a>
			</span>
			欢迎您来到商城,&nbsp;<span><a href="">{{user.nike}}</a></span>
		</div>
		<div class="right">
			<ul>
				<li><a target="_blank" href="memberCenter.jsp#orders">我的订单<em></em></a></li>
				<li><a target="_blank" href="shopping.jsp">购物车<em></em></a></li>
				<li><a target="_blank" href="memberCenter.jsp#address">收货地址<em></em></a></li>
				<li><a target="_blank" href="memberCenter.jsp#userInfo">会员中心<em></em></li>
				</a>
				<li><a href='http://127.0.0.1:8080/test/userlogout'>退出登录</a></li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<div ng-if='user==""' class="header1-cont">
		<div class="left">
			<span style="margin-right:20px;" class="pull-left">
				<a href="index.jsp">首页</a>
			</span>
		</div>
		<div class="right">
			<ul>
				<li><a class="loginBtn" href="login.html">登陆<em></em></a></li>
				<li><a href="login.html#signup">注册<em></em></a></li>
				<li>客户服务<em></em></li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>

	<div class="clear"></div>
</div>
