<%@page pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="static/css/header.css"/>
		<link rel="stylesheet" type="text/css" href="static/css/shopping.css"/>
		<link rel="stylesheet" type="text/css" href="static/css/footer.css"/>
		<link rel="stylesheet" href="static/bootstrap/dist/css/bootstrap.min.css">
		<script src="static/js/jquery.min.js"></script>
		<script src="static/js/angular.min.js"></script>
	</head>
	<body ng-app='jdshop' ng-controller='shoppingController'>
		<div class="box">
			<!--头部-->
			<div class="header">
				<div class="header1">
					<div ng-if='user!=null' class="header1-cont">
						<div class="left">
							欢迎您来到鲜生购,&nbsp;<span><a href="">{{user.nike}}</a></span>
						</div>
						<div class="right">
							<ul>
								<li>我的订单<em></em></li>
								<li><a href="shopping.html">购物车<em></em></a></li>
								<li>收藏夹<em></em></li>
								<li><a href="The member center.html">会员中心<em></em></li></a>
								<li>客户服务<em></em></li>
							</ul>
							<div class="clear"></div>
						</div>
					</div>
					<div ng-if='user==null' class="header1-cont">
						
						<div class="right">
							<ul>
								<li><a href="login.html">登陆<em></em></a></li>
								<li><a href="login.html#signup">注册<em></em></a></li>
								<li>客户服务<em></em></li>
							</ul>
							<div class="clear"></div>
						</div>
					</div>

					<div class="clear"></div>
				</div>
				<div class="header2">
					<div class="header2-cont">
						<a href="index.html"><img src="static/img/images/gengduo_03.png"/></a>  <!--172*62-->
						<div class="sousuo">
							<div class="sousuo-up">
								<input type="text" name="" id="" value=""placeholder="泰国榴莲" />
								<em></em>
								<p>搜索</p>
							</div>
							<div class="sousuo-down">
								<ul>
									<li><a class="red" href="">热门：</a></li>
									<li><a class="red" href="">牛油果</a></li>
									<li><a href="">草莓</a></li>
									<li><a a class="red" href="">草莓</a></li>
									<li><a href="">三文鱼</a></li>
									<li><a a class="red" href="">有机菠菜</a></li>
									<li><a href="">蓝莓</a></li>
									<li><a class="red" href="">百香果</a></li>
									<li><a href="">牛肉</a></li>
								</ul>
								<div class="clear"></div>
							</div>
						</div>
						<div class="gouwuche">
							<em></em><span>购物车</span>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="header3">
					<div class="header3-cont">
						<ul>
							<li class="l1">全部分类</li>
							<li class="l2">首页</li>
							<li class="l2">主厨先生</li>
							<li class="l2">每日推荐</li>
							<li class="l2">会员专享</li>
							<li class="l2">品质保障</li>
						</ul>
						<div class="clear"></div>
					</div>
				</div>
		</div>
		<!--导航横线-->
		<div class="line"></div>
		<div class="cont-shopping">
			<div class="all">
				<input type="checkbox" name="" id="" value="" /><span class="s1">全选</span><span class="s2">商品信息</span><span class="s3">规格</span>
				<span class="s4">单价(元)</span><span class="s5">数量</span><span class="s6">小计</span><span class="s7">操作</span>
			</div>
			
			<div class="thing ">
				
				<ul class="down1 well">
					<li class="l1"><input type="checkbox" name="" id="" value="" /></li>
					<li class="l2"><img src="static/img/images/asdkj_03.png"/></li>
					<li class="l3">
						<p>天天新鲜&nbsp;有机无公害蓝莓</p>
						<p>清甜可口&nbsp;营养丰富</p>
						<p>建议冷藏</p>
					</li>
					<li class="l4">260g*盒</li>
					<li class="l5">￥25.6</li>
					<li class="l6">
						<span class="n1">-</span>
						<span class="n2">1</span>
						<span class="n3">+</span>
					</li>
					<li class="l7">￥25.6</li>
					<li class="l8">
						<p>移入收藏夹</p>
						<p>删除</p>
						<p>查找相似</p>
					</li>
				</ul>
				<ul class="down1 well">
					<li class="l1"><input type="checkbox" name="" id="" value="" /></li>
					<li class="l2"><img src="static/img/images/asdkj_06.png"/></li>
					<li class="l3">
						<p>天天新鲜&nbsp;有机绿色手剥甜橙&nbsp;</p>
						<p>清甜可口&nbsp;营养丰富</p>
						<p>建议冷藏</p>
					</li>
					<li class="l4">&nbsp;500g</li>
					<li class="l5">￥25.6</li>
					<li class="l6">
						<span class="n1">-</span>
						<span class="n2">1</span>
						<span class="n3">+</span>
					</li>
					<li class="l7">￥25.6</li>
					<li class="l8">
						<p>移入收藏夹</p>
						<p>删除</p>
						<p>查找相似</p>
					</li>
				</ul>

			</div>
			
			
			<div class="all2">
				<input type="checkbox" name="" id="" value="" /><span class="s1">全选</span><span class="s2">删除选中商品</span><span class="s3">已选中商品</span>
				<span class="s4">3</span><span class="s5">件</span><span class="s6">总价(元)：</span><span class="s7">￥258.6</span><span class="s8">结算</span>
			</div>
		</div>
		
		<!--footer-->
		<footer>
		<div class="up">
			<ul class="cont">
				<li class="l1"><a href=""><span class="s1"></span><i class="i1">顺丰包邮</i></a></li>
				<li class="l1"><a href=""><span class="s2"></span><i class="i1">同城次日到达</i></a></li>
				<li class="l1"><a href=""><span class="s3"></span><i class="i1">7天无理由退换货</i></a></li>
				<li class="l1"><a href=""><span class="s4"></span><i class="i1">线下体验店</i></a></li>
				<li class="l2">
					<p class="p1">24小时全国服务热线</p>
					<p class="p2">400-888-8888</p>
					<p class="p3"><a href=""><span class="s5"></span><i class="i2">联系客服</i></a></p>
				</li>
				
			</ul>
			<div class="clear"></div>
		</div>
		<div class="down">
			<div class="one">
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				
				<div class="ew1">
					<p><img src="static/img/er.png"/></p>
					<p>鲜生购公众号</p>
					
				</div>
				<div class="ew2">
					<p><img src="static/img/er.png"/></p>
					<p>鲜生购APP</p>
				</div>
			</div>
			<div class="clear"></div>
			<div class="two"></div>
			<div class="three">
				<span>网络文化经营许可证：19333520156</span>
				<span>鲁公网安备：25854651152</span>
				<span>违法和不良信息举报电话：110</span>
				<span>消费者维权电话：12305</span>
				<p>Copyright&nbsp;©&nbsp;2010-2020&nbsp;xianshenggou.com&nbsp;版权所有</p>
			</div>
			
	</footer>	
		</div>
	</body>
	<script>
		var jdshop = angular.module("jdshop",[]);
		jdshop.controller("shoppingController",["$scope","$http","$compile",function($scope,$http,$compile){
			$scope.user ;
			$scope.getCurrentUser = function(){
				// $http.get("http://127.0.0.1:8080/test/user/currUser")
				// .success(function(data){
				// 	console.log(data);
				// }) 
				$.ajax({
					url: "http://127.0.0.1:8080/test/user/currUser",
					type: "POST",
					// data: '{"email":"' + email + '","password":"' + password + '"}',
					contentType: "application/json;charset=utf-8",
					xhrFields:{
						withCredentials:true
					},
					success: function (data) {
						$scope.user = data;
						$scope.$apply();
					}
				})
			}
			$scope.getCurrentUser();
		}])
	</script>
</html>
