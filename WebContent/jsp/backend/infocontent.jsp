<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div data-options="region:'center',title:'用户管理'">
			<table class="easyui-datagrid"
				data-options="url:' ${ctx}/user/findAllUser',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
				<thead>
					<tr>
						<th data-options="field:'username'" width="80">username</th>
						<th data-options="field:'password'" width="100">password</th>
					</tr>
				</thead>
			</table>
</div>