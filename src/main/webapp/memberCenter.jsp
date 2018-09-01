<%@page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="static/css/header.css"/>
		<link rel="stylesheet" type="text/css" href="static/css/the member center.css"/>
		<link rel="stylesheet" type="text/css" href="static/css/footer.css"/>
	</head>
	<body ng-app='jdshop' ng-controller='memberCenterController'>
		<div class="box">
			
			<div class="header">
					<%@include file="header.jsp" %>
			</div>
		<!--导航横线-->
		<div class="line"></div>
		<div class="cont-hy">
			<ul>
				<li class="left">
					<dt class="d1">订单中心</dt>
					<dd>我的订单</dd>
					<dd>评价晒单</dd>
					<dd>我的活动</dd>
					<dt class="d2">关注中心</dt>
					<dd>我的订单</dd>
					<dd>评价晒单</dd>
					<dd>我的活动</dd>
					<dt class="d3">设置中心</dt>
					<dd class="dd1">个人信息</dd>
					<dd>收货地址</dd>
					
				</li>
				 
				<li class="center">
					<div class="d1">
						<span class="s1">基本信息</span>
						<span class="s2">头像照片</span>
					</div>
					
					<div class="d3">
						    <div class="user">
								<label>用户名：</label>
								<span>18562763451</span>
					        </div>
							<div class="name">
								<label>昵称：</label>
								<input class="input1" type="text" name="" id="" value="徐晓良良良" />
							</div>
							<div class="sex">
								<label>性别：</label>
								<input class="input2" type="radio" name="sex" /><span>男</span>
						        <input class="input2" type="radio" name="sex" /><span>女</span>
						        <input class="input2" type="radio" name="sex" /><span>保密</span>
							</div>
							<div class="birthday">
								<label>生日：</label>
								<input type="date" name="" id="" value="" />
							</div>
							<div class="real">
								<label>真实姓名：</label>
								<input class="input1" type="text" name="" id="" value="" />
							</div>
							<div class="hobby">
								<label>兴趣爱好：</label><span>请选择您感兴趣的分类，我们将提供给您最精确的推荐。</span>
								<p>
									<span>水果</span>
									<span>蔬菜</span>
									<span>猪牛羊肉</span>
									<span>海鲜水产</span>
								</p>
							</div>
							<div class="email">
								<label>邮箱验证：</label><span class="blue">立即验证</span>
							</div>
							<a href="index.html"><button>提交</button></a>
						
						
					</div>
				</li>
				<li class="right">
					<img src="static/img/touxiang.png"/>
				</li>
			</ul>
			
		</div>
		<%@include file="footer.jsp" %>	
		</div>
	</body>
	<script src="static/js/jquery.js"></script>
	<script src="static/js/angular.min.js"></script>
	<script>
		var jdshop = angular.module("jdshop",[]);
		jdshop.controller("memberCenterController",["$scope","$http","$compile",function(){
			$scope.user;
			
			$scope.getCurrentUser = function () {
				$.ajax({
					url: "http://127.0.0.1:8080/test/user/currUser",
					type: "POST",
					// data: '{"email":"' + email + '","password":"' + password + '"}',
					contentType: "application/json;charset=utf-8",
					xhrFields: {
						withCredentials: true
					},
					success: function (data) {
						$scope.user = data;
						if (data == "") {
							window.location.href = 'login.html'
						}
						$scope.$apply();
					}
				})
			}
			$scope.getCurrentUser();
		}])
	</script>
</html>
