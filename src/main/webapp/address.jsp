<%@ page language="java"   pageEncoding="utf-8"%>
<table class="table table-striped table-bordered" style="width:100%;">
    <thead>
        <tr>
            <th>地区</th>
            <th>地址</th>	
            <th>收件人</th>
            <th>手机号</th>
            <th>操作 <button class="btn-info addAddrBtn">新增</button></th>
        </tr>
    </thead>
    <tbody>
        <tr ng-repeat='addr in myAddrs'>
            <td>{{addr.zone}}</td>
            <td>{{addr.addr}}</td>
            <td>{{addr.name}}</td>
            <td>{{addr.tel}}</td>
            <td>
                <button ng-click='delAddrBtn(addr.id)' class="btn-info">删除</button>
                <button ng-click='setUse(addr)' ng-if='addr.status==1' class="btn-info">设为常用</button>
            </td>
        </tr>

    </tbody>

</table>
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
                <label>地区</label>
                <div id="distpicker" data-toggle="distpicker">
                    <!-- container -->
                    <select></select><!-- 省 -->
                    <select></select><!-- 市 -->
                    <select></select><!-- 区 -->
                </div>
                <label >地址</label>
                <input class="form-control" type="text" name="addr">
                <label>收件人姓名</label>
                <input class="form-control" type="text" name="name">
                <label>收件人手机号</label>
                <input class="form-control" type="text" name="tel">
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