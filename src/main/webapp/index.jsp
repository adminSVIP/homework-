<%@ page language="java"   pageEncoding="utf-8"%>
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
	<script src="static/js/angular.min.js"></script>
	<style type="text/css">
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
	</style>
</head>

<body ng-app='jdshop'  ng-controller='indexController' >

	<span >
	<div class="box">
		<div class="header">
			
			<%@include file="header.jsp" %>
			<div class="header2">
				<div class="header2-cont">
					<a href="index.html"><img src="static/img/images/gengduo_03.png" /></a>
					<!--172*62-->
					<div class="sousuo">
						<div class="sousuo-up">
							<input type="text" name="" id="" value="" placeholder="泰国榴莲" />
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
							<div class="clear">

							</div>
						</div>

					</div>
					<div class="gouwuche">
						<a href="shopping.html"><em></em></a><span>购物车</span>
					</div>
				</div>
				<div class="clear">

				</div>

			</div>
			<div class="header3">
				<div class="header3-cont">
					<ul>
						<li class="l1">全部分类</li>
						<div class="all" style="max-height:410px;padding-top: 10px;">
							<dl style="max-height:355px;">
								<dt pid='{{item.id}}' ng-repeat='item in rootList track by $index' ng-if='$index<=11' >
									<a  href="fruit.jsp?type={{item.id}}">{{item.name}}</a>
									
								</dt>
								<!-- <dd>
									<a href="">牛油果</a>
									<a href="">草莓</a>
									<a href="">火龙果</a>
								</dd> -->
							</dl>
							<div class="more" style="position:relative;bottom:0px;z-index: -1;">
								更多<em></em>
							</div>
						</div>
						<li class="l2 l3">首页</li>
						<li class="l2">主厨先生</li>
						<li class="l2">每日推荐</li>
						<li class="l2">会员专享</li>
						<li class="l2">品质保障</li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<div class="banner">
			<img src="static/img/banner.png" />
			<img src="static/img/images/badjksa_02.png" />
			<img src="static/img/images/badjksa_02.png" />
			<ul>
				<li class="current"></li>
				<li></li>
				<li></li>
			</ul>
		</div>
		<script type="text/javascript">
			var n = 0
			function again() {
				$('.banner img').last().animate({ 'marginLeft': '-1349', opacity: '0' }, 3000, function () {
					$(this).css({ opacity: '1', 'marginLeft': '0' });
					$('.banner').prepend($('.banner img').last())
					if (n < $('.banner ul li').length - 1) {
						n++;
						$('.banner ul li').eq(n).addClass('.banner ul current').siblings().removeClass('.banner ul current');
					} else {
						n = 0;
						$('.banner ul li').eq(n).addClass('.banner ul current').siblings().removeClass('.banner ul current');
					}
				})
			}
			setInterval(again, 1800);
		</script>
	</div>
	<div class="box2">
		<div class="banner-small">
			<div class="every">
				<p><img src="static/img/mr.png" /></p>
				<p>每日推荐</p>
			</div>
			<div class="s1">
				<a href="Detail page.html"><img src="static/img/jiulian.png" /></a>
			</div>
			<div class="s1">
				<a href=""><img src="static/img/s2.png" /></a>
			</div>
			<div class="s1">
				<a href=""><img src="static/img/s3.png" /></a>
			</div>
			<div class="s1">
				<a href=""><img src="static/img/xiaolongxia.png" /></a>
			</div>
		</div>
		<div class="clear">
		</div>
		<script type="text/javascript">
			$('.header1-cont .left .a1').click(function () {
				$('.tanchu').css('display', 'block')
			})
			$('.close').click(function () {
				$('.tanchu').css('display', 'none')
			})
		</script>

		<!--新品上市-->
		<div class="xpss cont-xg ">
			<div class="xpss1">
				<p class="p1 ">新品上市</p>
				<p class="p2 "><a href="">更多<em></em></a></p>
			</div>
			<div class="clear"></div>
			<div class="sp">
				

			</div>

			<div class="clear">

			</div>


		</div>

	
		<%@include file="footer.jsp" %>
		</div>
	</span>
</body>
	<script>
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
			$scope.getProducts = function(pageno){
				if (pageno != undefined) {
					pageno = "?pageno=" + pageno;
				} else {
					pageno = "";
				}
				$http.get('http://127.0.0.1:8080/test/product/select'+ pageno)
				.success(function(data){
					$scope.appendProductHtml($(".sp"),data.list);
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
			$scope.getProducts(1);
			$scope.getType();
			$scope.getCurrentUser();
		}])
		$(document).on("mouseenter",'.cont-xg .sp ul li',function () {
			$(this).css('border-color','#d63a3b');
		})
		$(document).on("mouseleave",'.cont-xg .sp ul li',function () {
			$(this).css('border-color','#ffffff')
		})
	</script>
</html>