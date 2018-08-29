<%@page pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="static/css/header.css" />
	<link rel="stylesheet" type="text/css" href="static/css/Detail page.css" />
	<link rel="stylesheet" type="text/css" href="static/css/base.css" />
	<link rel="stylesheet" type="text/css" href="static/css/footer.css" />
</head>

<body ng-app='jdshop' ng-controller='detailPageController' >
	<div class="box">
		<div class="header">
			<div class="header1">
				<div class="header1-cont">
					<div class="left">
						欢迎您来到鲜生购,&nbsp;<a href="">请登录</a>&nbsp;<span><a href="">免费注册</a></span>
					</div>
					<div class="right">
						<ul>
							<li>我的订单<em></em></li>
							<li><a href="shopping.html">购物车<em></em></a></li>
							<li>收藏夹<em></em></li>
							<li><a href="The member center.html">会员中心<em></em></li></a>
							<li>客户服务<em></em></li>
						</ul>
						<div class="clear">

						</div>

					</div>

				</div>
				<div class="clear">

				</div>

			</div>
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
						<span class="jia">-</span><span class="number3">1</span><span class="jian">+</span>
						<p class="goumai"><span class="goumai1">立即购买</span><span class="goumai2">加入购物车</span></p>
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
		<footer>
			<!--<div class="up">
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
		</div>-->
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
						<p><img src="static/img/er.png" /></p>
						<p>鲜生购公众号</p>

					</div>
					<div class="ew2">
						<p><img src="static/img/er.png" /></p>
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
<!-- <script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script> -->
<script src="static/js/jquery.js"></script>
<script src="static/js/angular.min.js"></script>

<script src="https://cdn.bootcss.com/angular.js/1.5.4/angular-sanitize.js"></script>
<!--<script src="static/js/jquery.jqzoom.js" type="text/javascript" charset="utf-8"></script>-->
<script>
	var id = <c:out default="0" value="${param.id}"/>;
	if(id==0){
		alert("该商品不存在");
		window.history.back();
	}
	var jdshop = angular.module("jdshop",['ngSanitize']);
	jdshop.controller("detailPageController",["$scope","$http","$compile",function($scope,$http,$compile){
		$scope.product ;
		$scope.scr ;
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
					}
				})
			}
			console.log(id);
		
		$scope.getProductById(id);
	}])
</script>
<script src="https://cdn.bootcss.com/jquery-zoom/1.7.21/jquery.zoom.js"></script>
<script src="static/js/base.js" type="text/javascript" charset="utf-8"></script>
</html>