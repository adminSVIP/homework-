<%@ page language="java"   pageEncoding="utf-8"%>


<table class="table table-striped table-bordered" style="width:100%;">
    <thead>
        <tr>
            <th>商品名</th>
            <th>信息</th>
            <th>数量</th>
            <th>单价</th>
            <th>总价</th>
            <th>操作</th>
        </tr>
    </thead>
    <tbody>
        <tr   ng-repeat='order in myOrders'>
            <td>{{order.fullname}}</td>
            <td>
                <p>{{order.tip}}</p>
                <!-- <p>{{order.activity}}</p> -->
                <!-- <p>{{order.sale}}</p> -->
            </td>
            <td>
                {{order.count}}
            </td>
            <td>{{order.nowprice}}</td>
            <td>{{order.nowamount}}</td>
            <td class="col-md-2">
                <span ng-if='order.status==4'>已退货</span>
                <span ng-if='order.status==1'>等待发货</span>
                <span ng-if='order.status==5'>已结束</span>
                <button ng-if='order.status==2' ng-click="oBtnClick(order)" class="btn-info">确认收货</button>
                <button ng-if='order.status==3' ng-click="oBtnClick(order)" class="btn-info">退货</button>
                <button ng-if='order.status==3&&order.assessstatus==0'  ng-click="assesstBtn(order)" class="btn-info">评价</button>
            </td>
        </tr>
    </tbody>
</table>
