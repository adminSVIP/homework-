<%@page pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/bootstrap/dist/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="static/bootstrap/dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="static/css/header.css"/>
		<link rel="stylesheet" type="text/css" href="static/css/fruit.css"/>
		<link rel="stylesheet" type="text/css" href="static/css/footer.css"/>
		<style> 
			.banner{ 
			height: 450px;
		}
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
			margin-bottom: 20px;
		}
		.sp li p {
			margin: 5px 0 0 0 !important;

		}
		</style>
	</head>
	<body ng-app='jdshop'  ng-controller='typeController'>
		<div class="box">
			<div class="header">
				<%@include file="header.jsp" %>
				<%@include file="header2.jsp" %>
				
			</div>
		<!--导航横线-->
		<div class="line"></div>
		  <!--分类-->
		<div class="cont-xg">
			
			<!--商品-->
			<div class="sp">
				
			   <script type="text/javascript">
			   	  $('.sp .title-sp span').mouseenter(function () {
			   	  	$(this).css({'background':'#d63a3b','color':'#fdfcfc'})
			   	  })
			   	  $('.sp .title-sp span').mouseleave(function () {
			   	  	$(this).css({'background':'#ffffff','color':'#3c3b3a'})
			   	  	$('.sp .title-sp .s1').css({'background':'#d63a3b','color':'#fdfcfc'})
			   	  })
			   </script>
			   <!--商品图片-->
			  
			   <script type="text/javascript">
			   	     $('.cont-xg .sp ul li').mouseenter(function () {
			   	     	$(this).css('border-color','#d63a3b')
			   	     })
			   	     $('.cont-xg .sp ul li').mouseleave(function () {
			   	     	$(this).css('border-color','#ffffff')
			   	     })
			   </script>
			 
			</div>
			
		</div>
		<%@include file="footer.jsp" %>
		<%@include file="loginToolModule.jsp" %>
		</div>
		
	</body>
	
	<script src="static/js/angular.min.js"></script>
	<script>
		$(document).on("click",".searchBtn",function(){
			var where = $(this).siblings(".searchInput").val();
			if(where==""){
				where = $(this).siblings(".searchInput").attr("placeholder");
			}
			window.location.href="search.jsp?where="+where;
		})
		var type = <c:out default="0" value="${param.type}"/>;
		var jdApp = angular.module("jdshop",[]);
		jdApp.controller("typeController",["$scope", "$http", "$compile", function ($scope, $http, $compile) {
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
			$scope.getType = function(){
				$http.get('http://127.0.0.1:8080/test/type/select')
				.success(function(data){
					// $scope.rootList = $scope.getRootList(data);
					$scope.types = data;
					$scope.getTypeProducts(type);
				});
			}
			$scope.getSubs = function(list,parentid){
				var subList = [];
				list.forEach(element => {
					if(element.parentid == parentid)subList.push(element);
				});
				return subList;
			}
			$scope.appendProductHtml = function(object,list){
				console.log(list);
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
								+"	</div></a>"
								+"</li>";
				}
				html = html +"</ul>";
				object.append(html);
				
			}
			$scope.getProductByType = function(type){
				var o = {
					where:type,
					searchType:1
				}
				var data = JSON.stringify(o);
				$http({
					method:"post",
					data:data,
					headers:{'Content-Type': 'application/json'},
					url:"http://127.0.0.1:8080/test/product/select"
				}).success(function(data){
					if(data.list.length<=0){
						$scope.getProductByType(1);
					}else{
						$scope.appendProductHtml($(".sp"),data.list);
					}
				})
			}
			//递归
			$scope.getTypeProducts = function(type){
				$scope.getProductByType(type);
				var sub = $scope.getSubs($scope.types,type);
				sub.forEach(element => {
					$scope.getTypeProducts(element.id);
				});

			}

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
			$scope.getCurrentUser();
			
			$scope.getType();
		}])
		

		$(document).on("mouseenter",'.cont-xg .sp ul li',function () {
			$(this).css('border-color','#d63a3b');
		})
		$(document).on("mouseleave",'.cont-xg .sp ul li',function () {
			$(this).css('border-color','#ffffff')
		})
	</script>
</html>
