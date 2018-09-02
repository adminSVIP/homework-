<%@ page language="java"   pageEncoding="utf-8"%>
<div class="modal fade" id="loginToolModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<form action="" >
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					登陆
				</h4>
			</div>
			<div class="modal-body">
				

				
				<label>邮箱</label>
				<input class="form-control" type="email" name="email" required>
				
				<label>密码</label>
				<input class="form-control" type="password" name="password"required >
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary btnModalLogin">
					确定
				</button>
			</div>
		</div><!-- /.modal-content -->
		</form>
	</div><!-- /.modal -->
</div>
<script>
	$(document).on("click",".loginBtn",function(e){
		e.preventDefault();
		$("#loginToolModal").modal('show');
	})
	
	
</script>