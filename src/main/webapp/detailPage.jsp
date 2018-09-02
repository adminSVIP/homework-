<%@page pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="static/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="static/css/header.css" />
	<link rel="stylesheet" type="text/css" href="static/css/Detail page.css" />
	<link rel="stylesheet" type="text/css" href="static/css/base.css" />
	<link rel="stylesheet" type="text/css" href="static/css/footer.css" />
	<script src="static/js/jquery.js"></script>
	<script src="static/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="static/js/angular.min.js"></script>
	<script src="https://cdn.bootcss.com/angular.js/1.5.4/angular-sanitize.js"></script>
	<style>  
		.countBtn,.goumai1,.goumai2{
			cursor: pointer; 
			-moz-user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
			-khtml-user-select: none;
			user-select: none;
		}
		 
	</style>
</head>

<body ng-app='jdshop' ng-controller='detailPageController' >
	<div class="box">
		<div class="header">
			
			<%@include file="header.jsp" %>
			<%@include file="header2.jsp" %>
			

		</div>
		<div class="cont">
			<div class="banner">
				<img src="static/img/sha.png" />
			</div>
			<div class="buy">
				<p class="p1">您现在的位置：<span class="s1">首页<em>></em>新鲜水果专场<em>></em></span><span class="s2">榴莲</span></p>
			</div>
		</div>
		<!--图片展示-->
		<div class="container boxs">
			<div class="top fl">
				<div class="overflow">
					<div id="preview" class="spec-preview"> <span class="jqzoom"><img class="jqzoom" width="521px" height="507px" jqimg="static/img/gshaf.png"
							 src="{{src[0]}}" /></span> </div>
				</div>
				<!--缩图开始-->
				<div class="spec-scroll">
					<div class="re">
						<div class="prev"><img src="static/img/images/ajdhfk_03.png" /></div>
						<div class="next"><img src="static/img/images/gdsfjg_03.png" /></div>
						<div class="items">
							<ul>
								<li><img width="102px" height="102px" alt="" bimg="static/img/gshaf.png" src="{{src[0]}}" onmousemove="preview(this);"></li>
								<li><img width="102px" height="102px" alt="" bimg="static/img/bajksfhkjf.png" src="{{src[1]}}" onmousemove="preview(this);"></li>
								<li><img width="102px" height="102px" alt="" bimg="static/img/ghjfsg.png" src="{{src[2]}}" onmousemove="preview(this);"></li>
								<li><img width="102px" height="102px" alt="" bimg="static/img/liuliantu.png" src="{{src[3]}}" onmousemove="preview(this);"></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
			<!--详细介绍-->
			<div class="goods fl">
				<div class="heard">
					{{product.fullname}}
				</div>
				<div class="hui">
					<div class="money">
						<div class="price">价&nbsp;格:</div>
						<span class="price1">￥{{product.nowprice}}</span>
						<span class="price2"> <del>￥{{product.price}}</del> </span>
					</div>
					<div class="lingquan">
						<div class="quan">领&nbsp;券:</div>
						<span><img src="static/img/quan.png" /></span>
						<!--82*25-->
						<span class="huodong">活动截止到 6.30</span>
					</div>
					<div class="song">
						<div class="songzhi">送&nbsp;至：</div>
						<span class="address">青岛 &nbsp;城阳区</span><span class="sanjiao"></span>
						<p>由&nbsp;<span class="zhenxiang">珍享旗舰店</span>&nbsp;从海南发货&nbsp;并提供售后服务 <span class="lianxi"></span><span class="red">联系商家</span></p>
					</div>
				</div>
				<div class="else">
					<div class="guige">
						<div class="guige2">
							规&nbsp;格：
						</div>
						<span class="guige3">2kg*1个装</span><span class="guige3">2.5kg*1个装</span><span class="guige3">3kg*1个装</span>
					</div>
					<div class="number">
						<div class="number2">
							数&nbsp;量：
						</div>
						<span class="jia countBtn">-</span>
						<!-- <span class="number3">1</span> -->
						<input type="text" class="number3" value="1">
						<span class="jian countBtn">+</span>
						<p class="goumai">
							<span class="goumai1">立即购买</span>
							<span class="goumai2"></span>
						</p>
					</div>
					<div class="fenqi">
						<div class="fenqi2">
							分&nbsp;期：
						</div>
						<span class="fenqi3">
							2期免息
						</span>
						<span class="fenqi4"></span>
						<!--17-->
					</div>
					<div class="tese">
						<div class="tese2">
							特&nbsp;色：
						</div>
						<span class="tese3">顺丰包邮</span>
						<p class="tese4">生鲜类产品不支持7天无理由退换货</p>
					</div>
				</div>

			</div>
			<div class="clear"></div>
		</div>
		<!--商品详情开始-->
		<div class="box2">
			<div class="box21 fl">
				<div class="shangjia">
					<div class="logo-shangjia"></div>
					<div class="shangjia1">商&nbsp;家:<span class="shangjia12">珍享旗舰店</span></div>
					<div class="shangjia2">联&nbsp;系：<span class="shangjia21"></span><span class="shangjia22">联系客服</span></div>
					<div class="shangjia3">商&nbsp;家:<span class="shangjia32">400-888-5555</span></div>
					<div class="line-shangjia"></div>
					<ul class="Three">
						<li class="one fl">
							<p class="p1">商品</p>
							<p class="p2">5.52 <span class="jiantou1"></span></p>
						</li>
						<li class="two fl">
							<p class="p1">服务</p>
							<p class="p2">5.67 <span class="jiantou2"></span></p>
						</li>
						<li class="three fl">
							<p class="p1">物流</p>
							<p class="p2">4.83 <span class="jiantou3"></span></p>
						</li>
					</ul>

					<div class="clear"></div>
					<div class="enterstore">
						<span class="enter1">进入店铺</span><span class="enter2">收藏店铺</span>
					</div>
				</div>

				<!--猜你喜欢-->
			</div>
			<!--商品详情右下部分-->
			<div class="box22 fl">
				<div class="title-thing">
					<ul>
						<li class="l1">商品详情</li>
						<li class="l2">包装及产品参数</li>
						<li class="l2">累计评价<span>(199)</span></li>
						<li class="l2">咨询<span>(10)</span></li>
						<li class="l2">售后服务</li>
					</ul>
					<div class="clear"></div>
				</div>
				<div ng-bind-html='product.info' ></div>
			</div>
		</div>
		<div class="clear"></div>
		<%@include file="footer.jsp" %>
		<%@include file="loginToolModule.jsp" %>

		</div>
</body>
<!-- <script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script> -->

<!--<script src="static/js/jquery.jqzoom.js" type="text/javascript" charset="utf-8"></script>-->
<script>
	$(document).on("click",".searchBtn",function(){
			var where = $(this).siblings(".searchInput").val();
			if(where==""){
				where = $(this).siblings(".searchInput").attr("placeholder");
			}
			window.location.href="search.jsp?where="+where;
		})

	var id = <c:out default="0" value="${param.id}"/>;
	if(id==0){
		alert("该商品不存在");
		window.history.back();
	}
	var jdshop = angular.module("jdshop",['ngSanitize']);
	jdshop.controller("detailPageController",["$scope","$http","$compile",function($scope,$http,$compile){
		$scope.product ;
		$scope.scr ;
		$scope.user ;
		$scope.myShopcars=[];
		$scope.currShopcar;
		$scope.getProductById = function(id){
			var o = {
				where:id,
				searchType:2
			}
			var data = JSON.stringify(o);
			$http({
				method:"post",
				data:data,
				headers:{'Content-Type': 'application/json'},
				url:"http://127.0.0.1:8080/test/product/select"
			}).success(function(data){
				console.log(data);
				
				if(data.list.length<=0){
					// $scope.getProductById(1);
					alert("该商品不存在");
					window.history.back();
				}else{
					// $scope.appendProductHtml($(".sp"),data.list);
					$scope.product = data.list[0];
					$scope.src = $scope.product.pics.split(",");
					$scope.changeText();
				}
			})
		}
		
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
		$scope.changeText = function(){
			var text = "加入购物车";
			$(".goumai2").text(text);
			if($scope.myShopcars=="")return;
			$scope.myShopcars.forEach(element => {
				if (element.pics.length == 0 || $scope.product=="undefined" ) return true;
				if($scope.product=="")return;
				element.pics = element.pics.split(",")[0];
				
				if($scope.product.id == element.id){
					text = "移出购物车"; 
					$scope.currShopcar = element;
				}
			});
			
			$(".goumai2").text(text);
		}
		$scope.getShopcar = function () {
			$.ajax({
				url: "http://127.0.0.1:8080/test/shopcar/myShopcars",
				type: "POST",
				contentType: "application/json;charset=utf-8",
				xhrFields: {
					withCredentials: true
				},
				success: function (data) {
					console.log(data);
					$scope.myShopcars = data;
					$scope.$apply();
					$scope.changeText();
				}
			})
		}
		$(document).on("click",".goumai2",function(){
			if($scope.user==""){
				$("#loginToolModal").modal('show');
				return;
			}
			if($(".goumai2").text()=="加入购物车"){
				var shopcar = {
					product_id:$scope.product.id,
					count : $(".number .number3").val()
				};
				$.ajax({
					url: "http://127.0.0.1:8080/test/shopcar/insert",
					type: "POST",
					data: JSON.stringify(shopcar),
					contentType: "application/json;charset=utf-8",
					xhrFields:{
						withCredentials:true
					},
					success: function (data) {
						data = eval("("+data+")");
						if(data.rs>0){
							alert("加入成功");
							$(".goumai2").text("移出购物车");
						}else{
							alert("加入失败");
						}
					}
				})
			}else{
				$.ajax({
					url: "http://127.0.0.1:8080/test/shopcar/remove",
					type: "POST",
					data: {
						ids:$scope.currShopcar.cid
					},
					//contentType: "application/json;charset=utf-8",
					xhrFields:{
						withCredentials:true
					},
					success: function (data) {
						if(data==""){
							window.location.href='login.html';
						}
						data = eval("("+data+")");
						if(data.rs>0){
							alert("移除成功");
							$(".goumai2").text("加入购物车");
						}else{
							alert("移除失败");
						}
					}
				})
			}
		})

		$(document).on("click",".countBtn",function(){
			var number =  $(this).siblings(".number3").val();
			var operator = $(this).html();
			var number = eval(number+operator+"1");
			if(number<=1) number=1;
			$(this).siblings(".number3").val(number);
		})
		$(document).on("input","input.number3",function(){
			var thisInput = $(this);
			var val = thisInput.val();
			if(val==""){
				setTimeout(function(){
					if(thisInput.val()=="")thisInput.val("1");
				},500);
				return;
			}else{
				if(isNaN(val)){
					thisInput.val("1");
				}
			}
		})
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
					$scope.getShopcar();
					$("#loginToolModal").modal('hide');
				} else {
					alert("登陆失败");
				}
				}
			});
		})
		
		$scope.getCurrentUser();
		$scope.getProductById(id);
		$scope.getShopcar();
	}])
</script>
<script src="https://cdn.bootcss.com/jquery-zoom/1.7.21/jquery.zoom.js"></script>
<script src="static/js/base.js" type="text/javascript" charset="utf-8"></script>
</html>