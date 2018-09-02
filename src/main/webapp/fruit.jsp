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
			/* .cont-xg .sp ul{
 
			} */
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
			<div class="fenlei">
				<div class="bread">
								
					首页&nbsp;<em class="em1"></em>&nbsp;<span>水果&nbsp;<em></em>&nbsp;</span>
				</div>
				<div class="title-sg">
					水果<span class="span1">商品删选</span><span class="span2">共156328件商品</span>
				</div>
				<div class="d1">
					<span class="s1">分类：</span><span class="s2">苹果</span><span class="s2">橙子</span><span class="s2">桃子</span><span class="s2">菠萝</span><span class="s2">哈密瓜</span><span class="s2">火龙果</span>
					<span class="s2">西瓜</span><span class="s2">柠檬</span><span class="s2">牛油果</span><span class="s2">菠萝</span><span class="s2">蓝莓</span><span class="s2">樱桃</span><span class="s2">榴莲</span><span class="s2">更多</span>
				</div>
				<div class="d1">
					<span class="s1">品牌：</span><span class="s2">优得荟</span><span class="s2">天马吃荟</span><span class="s2">鲜果之家</span><span class="s2">珍享</span><span class="s2">佳惠</span><span class="s2">展沛</span><span class="s2">天天新鲜</span>
				</div>
				<div class="d1">
					<span class="s1">价格：</span><span class="s2">0-29</span><span class="s2">30-59</span><span class="s2">60-99</span><span class="s2">100-149</span><span class="s2">150-249</span><span class="s2">250-400</span><span class="s2">更多</span>
				</div>
				<div class="d1">
					<span class="s1">原产地：</span><span class="s2">越南</span><span class="s2">泰国</span><span class="s2">加拿大</span><span class="s2">马来西亚</span><span class="s2">印度</span><span class="s2">新西兰</span><span class="s2">更多</span>
				</div>
				<div class="d1">
					<span class="s1">进口/国产：</span><span class="s2">进口</span><span class="s2">国产</span>
				</div>
				<div class="more">更多选项<em></em></div>
				
				
			</div>
			<!--商品-->
			<div class="sp">
				<div class="title-sp">
				<span class="s1">综合排序</span><span class="s2">销量</span><span  class="s2">价格</span><span  class="s2">评价</span class="s2"><span class="s2">上架时间</span>
			   </div>
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
		var type = <c:out default="0" value="${param.type}"/>;
		var jdApp = angular.module("jdshop",[]);
		jdApp.controller("typeController",["$scope", "$http", "$compile", function ($scope, $http, $compile) {
			$scope.user ;
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
			$scope.getProductByType(type);
		}])
		

		$(document).on("mouseenter",'.cont-xg .sp ul li',function () {
			$(this).css('border-color','#d63a3b');
		})
		$(document).on("mouseleave",'.cont-xg .sp ul li',function () {
			$(this).css('border-color','#ffffff')
		})
	</script>
</html>
