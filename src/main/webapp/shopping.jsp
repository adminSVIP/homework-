<%@page pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head> 
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="static/css/header.css" />
	<link rel="stylesheet" type="text/css" href="static/css/shopping.css" />
	<link rel="stylesheet" type="text/css" href="static/css/footer.css" />
	<link rel="stylesheet" href="static/bootstrap/dist/css/bootstrap.min.css">
	<script src="static/js/jquery.min.js"></script>
	<script src="static/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="static/js/angular.min.js"></script>
	<script src="static/jqueryDistpicker/dist/distpicker.data.min.js"></script>
	<script src="static/jqueryDistpicker/dist/distpicker.min.js"></script>
	<style>
		.countBtn {
			cursor: pointer;
			-moz-user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
			-khtml-user-select: none;
			user-select: none;
		} 

		.number3 {
			display: inline-block;
			width: 30px;
			height: 20px;
			border: 1px solid #bfbfbf;
			background: #f5f2f8;
			font-size: 12px;
			color: #4a4a4a;
			font-family: "微软雅黑";
			line-height: 20px;
			text-align: center;
		}
	</style>
</head>

<body ng-app='jdshop' ng-controller='shoppingController'>
	<div class="box">
		<!--头部-->
		<div class="header">
			<%@include file="header.jsp" %>
				<div class="header2">
					<div class="header2-cont">
						<a href="index.html"><img src="static/img/images/gengduo_03.png" /></a>
						<!--172*62-->
						<div class="sousuo">
							<div class="sousuo-up">
								<input type="text" name="" id="" value="" placeholder="泰国榴莲" /> <em></em>
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
				<!-- <input type="checkbox" class="checkAll" /><span class="s1">全选</span> -->
				<span class="s2">商品信息</span><span class="s3">规格</span>
				<span class="s4">单价(元)</span><span class="s5">数量</span><span class="s6">小计</span><span class="s7">操作</span>
			</div>

			<div class="thing ">

				<ul class="down1 well" pid='{{shopcar.id}}' cid='{{shopcar.cid}}' ng-repeat='shopcar in myShopcars'>
					<li class="l1"><input type="checkbox" class="sureCheck" /></li>
					<li class="l2"><img width="95" height="85" src="{{shopcar.pics}}" /></li>

					<li class="l3">
						<p>天天新鲜&nbsp;有机绿色手剥甜橙&nbsp;</p>
						<p>清甜可口&nbsp;营养丰富</p>
						<p>建议冷藏</p>
					</li>
					<li class="l4">&nbsp;500g</li>
					<li class="l5">￥<span class="price" >{{shopcar.nowprice}}</span></li>
					<li class="l6">
						<span class="n1 countBtn">-</span>
						<!-- <span class="n2">1</span> -->
						<input type="text" class="number3" value="{{shopcar.count}}">
						<span class="n3 countBtn">+</span>
					</li>
					<li class="l7">￥<span class="priceCount" price='{{shopcar.price}}'>{{shopcar.nowprice}}</span></li>
					<li class="l8">
						<p>移入收藏夹</p>
						<p>删除</p>
						<p>查找相似</p>
					</li>
				</ul>

			</div>


			<div class="all2">
				<input type="checkbox" class="checkAll" /><span class="s1">全选</span><span class="s2">删除选中商品</span><span class="s3">已选中商品</span>
				<span class="s4">{{pCount}}</span><span class="s5">件</span><span class="s6">总价(元)：</span><span class="s7">￥0</span><span class="s8">结算</span>
			</div>
		</div>

		<!--footer-->
		<%@include file="footer.jsp" %>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							完善订单信息
						</h4>
					</div> 
					<div class="modal-body">
						<div class="address row" >
							<label class="col-md-2" >地址</label>
							<div class="col-md-2 btn-primary text-center addAddr">新增</div>
							
							<select class="form-control" ng-if='myAddrs.length>0'>
								<option ng-repeat='addr in myAddrs' value="{{addr.id}}">{{addr.zone}}___{{addr.addr}}</option>
							</select>


						</div>

						<div >
							<label for="comments">备注</label>
							<textarea class="form-control" name="comments" id="comments" cols="30" height='80'></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<div class="pull-left">总金额: <span class="s7">￥{{currAmount}}</span> </div>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="button" class="btn btn-primary btnPay">
							付款
						</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>

		<div class="modal fade" id="addAddrMod" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
								添加地址
							</h4>
						</div>
						<div class="modal-body">
							<label >地区</label>
							<div id="distpicker" data-toggle="distpicker"><!-- container -->
								<select></select><!-- 省 -->
								<select></select><!-- 市 -->
								<select></select><!-- 区 -->
							</div>
							<label >地址</label>
							<input  class="form-control" type="text" name="addr">
							<label >收件人姓名</label>
							<input  class="form-control" type="text" name="name">
							<label >收件人手机号</label>
							<input  class="form-control" type="text" name="tel">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭
							</button>
							<button type="button" class="btn btn-primary btnAddress">
								确定
							</button>
						</div>
					</div><!-- /.modal-content -->
				</div><!-- /.modal -->
			</div>
</body>
<script>
	$('#distpicker').distpicker();
	var jdshop = angular.module("jdshop", []);
	// jdshop.directive('onFinish', function ($timeout) {
	// return {
	// 	restrict: 'A',
	// 	link: function (scope, element, attr) {
	// 		if (scope.$last === true) {
	// 			$timeout(function () {
	// 				scope.$emit('ngRepeatFinished');
	// 			});
	// 		}
	// 	}
	// }});
	jdshop.controller("shoppingController", ["$scope", "$http", "$compile", function ($scope, $http, $compile) {
		$scope.user;
		$scope.amount = 0;
		$scope.currAmount = 0;
		$scope.pCount = 0;
		$scope.myAddrs ;
		$scope.orders_detail;
		$scope.payShopcarIds;
		$scope.getAmount = function () {
			var amount = 0;
			var oldAmount = 0;
			var pCount = 0;
			// $(".sureCheck").each(function () {
			// 	if ($(this).prop('checked')) {
			// 		pCount++;
			// 		var priceCount = $($(this)[0].parentNode.parentNode.children[6].childNodes[1]).html();
			// 		console.log($($(this)[0].parentNode.parentNode.children[6].childNodes[1]).html());
			// 		amount = eval(amount + "+" + priceCount);
			// 	}
			// })
			$scope.orders_detail = [];
			$scope.orders_status = [];
			$scope.payShopcarIds = [];
			$(".down1").each(function(){
				var thisP = $(this);
				if(thisP.find(".sureCheck").prop('checked')){
					
					pCount++;
					var price = thisP.find(".l7 span").attr("price");
					
					var priceCount = thisP.find(".l7 span").html();
					amount = eval(amount + "+" + priceCount);
					
					oldAmount = eval(oldAmount + "+" + price);
					
					var orders_detail ={
						product_id:thisP.attr("pid"),
						count:thisP.find(".number3").val(),
						price:price,
						nowprice:priceCount,
						comments:"",
					}
					$scope.orders_detail.push(orders_detail);
					var orders_status = {
						comments :"",
						amount:amount
					}
					$scope.orders_status.push(orders_status);
					$scope.payShopcarIds = $scope.payShopcarIds + "," + thisP.attr("cid");
				
				}
			})
			$scope.pCount = pCount;
			amount = amount.toFixed(2);
			oldAmount.toFixed(2);
			$(".all2 .s7").html("￥" + amount);
			$scope.currAmount = amount;
			$scope.amount = oldAmount;
			$scope.payShopcarIds = $scope.payShopcarIds.substr(1,$scope.payShopcarIds.length);
			$scope.$apply();
		}


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
		$scope.getShopcar = function () {
			$.ajax({
				url: "http://127.0.0.1:8080/test/shopcar/myShopcars",
				type: "POST",
				contentType: "application/json;charset=utf-8",
				xhrFields: {
					withCredentials: true
				},
				success: function (data) {
					$scope.myShopcars = data;
					$scope.myShopcars.forEach(element => {
						if (element.pics.length == 0) return true;
						element.pics = element.pics.split(",")[0];
					});
					console.log($scope.myShopcars);
					$scope.$apply();
				}
			})
		}
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

		$(document).on("click", ".countBtn", function () {
			var number = $(this).siblings(".number3").val();
			var operator = $(this).html();
			var number = eval(number + operator + "1");
			if (number <= 1) number = 1;
			var price = $(this).parent().siblings(".l5").find("span").html();
			var priceCount  = (price * number).toFixed(2);
			$(this).parent().siblings(".l7").find("span").html(priceCount)
			$(this).siblings(".number3").val(number);
			$scope.getAmount();
		})
		$(document).on("input", "input.number3", function () {
			var thisInput = $(this);
			var val = thisInput.val();
			if (val == "") {
				setTimeout(function () {
					var price = thisInput.parent().siblings(".l5").find("span").html();
					price = parseFloat(price).toFixed(2);
					var priceCount = thisInput.parent().siblings(".l7").find("span").html(price);
					$scope.getAmount();
					if (thisInput.val() == "") {
						thisInput.val("1");
						var price = thisInput.parent().siblings(".l5").find("span").html();
						price = parseFloat(price).toFixed(2);
						var priceCount = thisInput.parent().siblings(".l7").find("span").html(price);
						$scope.getAmount();
					} else {
						var price = thisInput.parent().siblings(".l5").find("span").html();
						price = (price * thisInput.val()).toFixed(2);
						var priceCount = thisInput.parent().siblings(".l7").find("span").html(price);
						$scope.getAmount();
					}
				}, 500);
				return;
			} else {
				if (isNaN(val)) {
					var price = thisInput.parent().siblings(".l5").find("span").html();
					price = parseFloat(price).toFixed(2);
					var priceCount = thisInput.parent().siblings(".l7").find("span").html(price);
					$scope.getAmount();
					thisInput.val("1");
					return;
				}
				var price = thisInput.parent().siblings(".l5").find("span").html();
				price = (price * val).toFixed(2);
				var priceCount = thisInput.parent().siblings(".l7").find("span").html(price);
				$scope.getAmount();
			}
		})
		$(document).on("click", ".sureCheck", function () {
			$scope.getAmount();
		})
		$(document).on("click", ".checkAll", function () {
			var checkAllBtn = $(this);
			$(".sureCheck").each(function () {
				if (checkAllBtn.is(":checked")) {
					$(this).prop('checked', true);
				} else {
					$(this).prop('checked', false);
				}
			})
			$scope.getAmount();
		})


		$(document).on("click", ".all2 .s8", function () {
			if($scope.currAmount<=0){
				alert("没有商品被选中");
				return;
			}
			$('#myModal').modal('show');
			
		})
		
		$(document).on("click",".addAddr",function(){
			$('#addAddrMod').modal('show');
		})

		$(document).on("click",".btnPay",function(){
			var amount = $scope.amount;
			var nowamount = $scope.currAmount;
			var addressid = $(this).parents(".modal").find("select option:selected").val();
			var comments = $(this).parents(".modal").find("#comments").val();
			var map = {
				order :{
					amount:amount,
					nowamount:nowamount,
					address_id:addressid,
					comments:comments,
				},
				orders_detail:$scope.orders_detail,
				orders_status:$scope.orders_status,
				payShopcarIds:$scope.payShopcarIds 
			}
			console.log(JSON.stringify(map));
			$.ajax({
				url: "http://127.0.0.1:8080/test/orders/order",
				type: "POST",
				data: JSON.stringify(map),
				contentType: "application/json;charset=utf-8",
				xhrFields: {
					withCredentials: true
				},
				success: function (data) {
					console.log(data);
					$scope.$apply();
				}
			})
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
					$('#addAddrMod').modal('hide');
				}
			})
 
		})
		$scope.getShopcar();
		$scope.getCurrentUser();
		$scope.getAddress();
	}])
</script>

</html>