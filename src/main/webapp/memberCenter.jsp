<%@page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="static/css/header.css"/>
		<link rel="stylesheet" type="text/css" href="static/css/the member center.css"/>
		<link rel="stylesheet" type="text/css" href="static/css/footer.css"/>
		<link rel="stylesheet" href="static/bootstrap/dist/css/bootstrap.min.css">
		<script src="static/js/jquery.js"></script>
		<script src="static/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="static/jqueryDistpicker/dist/distpicker.data.min.js"></script>
		<script src="static/jqueryDistpicker/dist/distpicker.min.js"></script>
		<script src="static/js/angular.min.js"></script>
		<script src="static/js/angular-route.js"></script>
		<style>
			.left dt{
				cursor: pointer;
			}
		</style>
	</head>
	<body ng-app='jdshop' ng-controller='memberCenterController'>
		<div class="box">
			
			<div class="header">
			<%@include file="header.jsp" %>
			</div>
		<!--导航横线-->
		<div class="line"></div>
		<div class="cont-hy">
			<ul class="container">
				<li class="left col-lg-3 pull-left" >
					<dt v='userInfo' class="dd1">个人信息</dt>
					<dt v='orders' class="d1">订单中心</dt>
					<dt v='address'>收货地址</dt>
				</li>
				 
				<li class="center col-md-9 pull-left"  ng-view>
					
				</li>
			
			</ul>
			
		</div>
		<%@include file="footer.jsp" %>	
		</div>
	</body>
	
	<script>
		$(document).on("click",".left dt",function(){
			var v = $(this).attr("v");
			window.location.href = "memberCenter.jsp#"+v;
			$(this).siblings("dt").removeClass("dd1");
			$(this).addClass("dd1");
		})

		var jdshop = angular.module("jdshop",["ngRoute"]);
		jdshop.config(["$routeProvider",function($routeProvider){
			$routeProvider.when("/userInfo",{
				templateUrl: "userInfo.jsp",
          		controller: 'memberCenterController'
			}).when("/",{
				templateUrl:"userInfo.jsp",
				controller:"memberCenterController"
			}).when("/orders",{
				templateUrl: "orders.jsp",
          		controller: 'ordersController'
			}).when("/address",{
				templateUrl: "address.jsp",
          		controller: 'addressController'
			})
		}])

		jdshop.controller("memberCenterController",["$scope","$http","$compile",function($scope,$http,$compile){
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

		jdshop.controller("ordersController",["$scope","$http","$compile",function($scope,$http,$compile){
			$scope.myOrders;
			$scope.getOrders = function () {
				$.ajax({
					url: "http://127.0.0.1:8080/test/orders/userOrders",
					type: "POST",
					contentType: "application/json;charset=utf-8",
					xhrFields: {
						withCredentials: true
					},
					success: function (data) {
						$scope.myOrders = data;
						console.log($scope.myOrders);
						$scope.$apply();
					}
				})
			}
			$scope.oBtnClick = function(order){
				function copy(obj){
					var newobj = {};
					for ( var attr in obj) {
						newobj[attr] = obj[attr];
					}
					return newobj;
				}

        		var o = copy(order);
				var comments = "";
				if(order.status==2){//确认收货
					if(!confirm("确认收货?"))return;
					o.status = 3;
				}else if(order.status==3){//退货
					if(!confirm("确认退货?"))return;
					comments = prompt("退货原因:");
					o.status=4;
				}
				
				// $.ajax({
				// 	url: "http://127.0.0.1:8080/test/orders/recivePackage",
				// 	type: "POST",
				// 	contentType: "application/json;charset=utf-8",
				// 	data:{
				// 		"data":data,
				// 		"comments":comments
				// 	},
				// 	xhrFields: {
				// 		withCredentials: true
				// 	},
				// 	success: function (data) {
				// 		console.log(data);
				// 		if(data.state == "ok"){
				// 			order.status = data.code;
				// 		}else{
				// 			alert("失败");
				// 		}
				// 	}
				// })
				$http({
					method:"POST",
					url:"http://127.0.0.1:8080/test/orders/recivePackage",
					data:{
						"data":o.id,
						"status":o.status,
						"comments":comments
					}
					}).success(function(data){
						// if(data.state=="false"){
						// 	window.location.href='login.html';
						// }
						if(data.state == "ok"){
							order.status = data.code;
						}else{
							alert("失败");
						}
				})

			}
			
			$scope.assesstBtn = function(order){
				var ass = prompt("评价");
				if(ass==""){
					alert("评价不能为空");
					return;
				}
				var assess = {
					orders_id:order.id,
					product_id:order.product_id,
					user_id:order.user_id,
					pics:"",
					info:ass,
					result:"",
					status:1
				}
				$http({
					method:"POST",
					url:"http://127.0.0.1:8080/test/orders/assess",
					data:assess,
				}).success(function(data){
				
					console.log(data);
					if(data.state == "ok"){
						order.assessstatus = 1;
					}else{
						alert("失败");
					}
				})
			}
			$scope.getOrders();

		}])
	
		jdshop.controller("addressController",["$scope","$http","$compile",function($scope,$http,$compile){
			$scope.myAddrs;
			$scope.getAddress = function () {
				$.ajax({
					url: "http://127.0.0.1:8080/test/address/index",
					type: "POST",
					contentType: "application/json;charset=utf-8",
					xhrFields: {
						withCredentials: true
					},
					success: function (data) {
						$scope.myAddrs = data;
						console.log($scope.myAddrs);
						$scope.$apply();
					}
				})
			}
			$(document).on("click",".addAddrBtn",function(){
				console.log(22);
				$("#addAddrMod").modal("show");
			})
			$(document).on("click",".btnAddress",function(){
				var zone ="";
				$("#distpicker").find("option:selected").each(function(){
					zone = zone + "/" +$(this).text();
				})  
				zone = zone.substr(1,zone.length-1);
				var addr = $(this).parents(".modal").find("input[name='addr']").val();
				var name = $(this).parents(".modal").find("input[name='name']").val();
				var tel = $(this).parents(".modal").find("input[name='tel']").val();
				var address = {
					zone:zone,
					addr:addr,
					name:name,
					tel,tel
				}
				console.log(JSON.stringify(address));
				$.ajax({
					url: "http://127.0.0.1:8080/test/address/add",
					type: "POST",
					data: JSON.stringify(address),
					contentType: "application/json;charset=utf-8",
					xhrFields: {
						withCredentials: true
					},
					success: function (data) {
						data = eval("("+data+")");
						console.log(data);
						if(data.rs > 0){ 
							$scope.getAddress();
						}else{
							alert("新增失败");
						}
						if (data == "") {
							window.location.href = 'login.html'
						}
						$scope.getAddress();
						$('#addAddrMod').modal('hide');
					}
				})
	
			})
			
			$scope.delAddrBtn = function(id){
				if(!confirm("确认删除?"))return;
				$.ajax({
					url: "http://127.0.0.1:8080/test/address/del?id="+id,
					type: "POST",
					contentType: "application/json;charset=utf-8",
					xhrFields: {
						withCredentials: true
					},
					success: function (data) {
						data = eval("("+data+")");
						if(data.state=="ok"){
							$scope.getAddress();
						}else{
							alert("删除失败");
						}
					}
				})
			}
			$scope.setUse = function(addr){
			
				$.ajax({
					url: "http://127.0.0.1:8080/test/address/setUse?id="+addr.id,
					type: "POST",
					contentType: "application/json;charset=utf-8",
					xhrFields: {
						withCredentials: true
					},
					success: function (data) {
						data = eval("("+data+")");
						if(data.state=="ok"){
							$scope.getAddress();
						}else{
							alert("设置失败");
						}
					}
				})
			}
			$('#distpicker').distpicker();
			$scope.getAddress();
		}])
	
	</script>
</html>
