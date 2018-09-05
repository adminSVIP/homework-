<%@ page language="java"  isELIgnored="false"  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title></title>
	<script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" type="text/css" href="static/css/header.css" />
	<link rel="stylesheet" type="text/css" href="static/css/homepage.css" />
	<link rel="stylesheet" type="text/css" href="static/css/footer.css" />
	<link rel="stylesheet" type="text/css" href="static/css/fruit.css"/>
	<link rel="stylesheet" href="static/bootstrap/dist/css/bootstrap.min.css">
	<script src="static/js/angular.min.js"></script>
	<script src="static/bootstrap/dist/js/bootstrap.min.js"></script>
	<style type="text/css">
		a{
			text-decoration: none !important;
		}
		.header3 .header3-cont ul .l3 {
			color: #D63A3B;
		}
		.all dl{
			position: relative;
		}
		.all dt{
			position: relative;
			cursor: pointer;
		}
		.all a{
			color: white;
		}
		.suball{
			position: absolute;
			background: rgba(0,0,0,0.5);
			top: 0 !important;
			left: 100% !important;
		}
		.sp li{
			margin-top: 20px;
		}
		.sp li p {
			margin: 10px 0 0 0 !important;

		}
	</style>
</head>

<body ng-app='jdshop'  ng-controller='indexController' >

	<span >
	<div class="box">
		<div class="header">
			
			<%@include file="header.jsp" %>
			<div class="header2">
				<div class="header2-cont">
					<a href="index.jsp"><img width="172px" height="62px" src="static/img/logo.jpg" /></a>
					<!--172*62-->
					<div class="sousuo">
						<div class="sousuo-up">
							<input type="text" class="searchInput" placeholder="" />
							<em></em>
							<p class="searchBtn">搜索</p>
						</div>
						<div class="sousuo-down">
							
							<div class="clear">

							</div>
						</div>

					</div>
					<div class="gouwuche">
						<a href="shopping.jsp"><em></em></a><span>购物车</span>
					</div>
				</div>
				<div class="clear">

				</div>

			</div>
		
		</div>
		
	</div>
	<div class="box2">
		
		<!--新品上市-->
		<div class="xpss cont-xg ">
			<div class="xpss1">
				<p class="p1 ">查询结果</p>
				<p class="p2 "><a href="">更多<em></em></a></p>
			</div>
			<div class="clear"></div>
			<div class="sp">
				

			</div>

			<div class="clear">

			</div>
			

		</div>

	
		<%@include file="footer.jsp" %>
		<%@include file="loginToolModule.jsp" %>

		</div>
	</span>
</body>
	<script>
		$(document).on("click",".searchBtn",function(){
			var where = $(this).siblings(".searchInput").val();
			if(where==""){
				where = $(this).siblings(".searchInput").attr("placeholder");
			}
			window.location.href="search.jsp?where="+where;
		})
		var where = '<c:out default="1" value="${param.where}"/>';
		var jdApp = angular.module("jdshop",[]);
		jdApp.controller("indexController",["$scope", "$http", "$compile", function ($scope, $http, $compile) {
			$scope.types;
			$scope.user ;
			$scope.rootList;
			$scope.getCurrentUser = function(){
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
			$scope.getProducts = function(pageno,where){
			
				
				$.ajax({
					url: "http://127.0.0.1:8080/test/product/select",
					type: "POST",
					data: '{"where":"' + where + '","searchType":"3"}',
					contentType: "application/json;charset=utf-8",
					// xhrFields:{
					// 	withCredentials:true
					// },
					success: function (data) {
						console.log(data);
						$scope.appendProductHtml($(".sp"),data.list);
					}
				});

				
			}
			$scope.appendProductHtml = function(object,list){
				var html = "<ul>";
				for(var i=0;i<list.length;i++){
					var cproduct = list[i]; 
					var src = cproduct.pics.split(",")[0];
					var style = "";
					if((i+1)%5==0){
						style = "style ='margin-right:0;'";
					}
					html = html +"<li "+ style +">"
								+"<a href=detailPage.jsp?id="+ cproduct.id+">"
								+"	<img width=159 height=159 src='"+ src +"'/>"
								+"	<div class='wenzi'>"
								+"		<p class='p1'>"+ cproduct.fullname +"</span></p>"
								+"		<p class='p2'> ￥&nbsp;"+ cproduct.nowprice +"</p>"
								+"		<p class='p3'>已售<span>" + cproduct.salecount + "</span>件</p>"
								+"	</div>"
								+"</a></li>";
				}
				html = html +"</ul>";
				object.append(html);
				
			}
			$scope.appendSubProductHtml = function(object,list){
				if(list.length<=0)return;				
				var html =  "<div class='all suball'><dl>";
				list.forEach(element => {
					html = html + "<dt pid='"+ element.id +"'>"+ element.name +"</dt>";
				});
				html = html + "</dl></div>";
				object.find("div.suball").remove();
				object.append(html);
			}
			$scope.getType = function(){
				$http.get('http://127.0.0.1:8080/test/type/select')
				.success(function(data){
					$scope.rootList = $scope.getRootList(data);
					$scope.types = data;
				});
			}
			$scope.getRootList = function(list){
				var rootList = [];
				list.forEach(element => {
					if(element.parentid == 0)rootList.push(element);
				});
				return rootList;
			}
			$scope.getSubs = function(list,parentid){
				var subList = [];
				list.forEach(element => {
					if(element.parentid == parentid)subList.push(element);
				});
				return subList;
			}
			
			$(document).on("mouseover",".all dt",function(){
				if(event.target!=this)return;
				var pid = $(this).attr("pid");
				var list = $scope.getSubs($scope.types,pid);
				$scope.appendSubProductHtml($(this),list);

			})
			$(document).on("mouseleave",".all dt",function(){
				$(this).parent().find("div.suball").remove();
			})
			
			$scope.getProducts(1,where);
			$scope.getType();
			$scope.getCurrentUser();

			$("#loginToolModal form").on("submit",function(){
				event.preventDefault();
				var email = $(this).find("input[name='email']").val();
				var password = $(this).find("input[name='password']").val();
				$.ajax({
					url: "http://127.0.0.1:8080/test/user/login",
					type: "POST",
					data: '{"email":"' + email + '","password":"' + password + '"}',
					contentType: "application/json;charset=utf-8",
					xhrFields:{
						withCredentials:true
					},
					success: function (data) {
					console.log(data);
					data = eval("(" + data + ")");
					if (data.state == "ok") {
						// window.location.href = 'index.jsp';
						$scope.getCurrentUser();
						$("#loginToolModal").modal('hide');
					} else {
						alert("登陆失败");
					}
					}
				});
			})

		}])
		$(document).on("mouseenter",'.cont-xg .sp ul li',function () {
			$(this).css('border-color','#d63a3b');
		})
		$(document).on("mouseleave",'.cont-xg .sp ul li',function () {
			$(this).css('border-color','#ffffff')
		})
	</script>
</html>