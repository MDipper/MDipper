<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>

<!DOCTYPE HTML>
<html>
<head>

<link href="${resource}/css/bootstrap.min.css" rel="stylesheet">
<link href="${css}/bootstrap-table.css" rel="stylesheet"/>
<link href="${css}/bootstrap-editable.css" rel="stylesheet"/>
<script src="${js}/jquery-1.11.1.js" ></script>
<script src="${js}/bootstrap.min.js" ></script>
<script src="${js}/bootstrap-table.js" ></script>
<script src="${js}/bootstrap-table-zh-CN.js" ></script>
<script src="${js}/bootstrap-table-export.js" ></script>
<script src="${js}/tableExport.js" ></script>
<script src="${js}/bootstrap-table-editable.js" ></script>
<script src="${js}/bootstrap-editable.min.js" ></script>
<script>
	$(document).ready(function() {
		var $table = $('#table'),
        	$remove = $('#remove'),
        	selections = [];
		$table.bootstrapTable({
			url : 'ajaxAllCustomer',
			height: $(window).height() - $('h1').outerHeight(true),
			pagination : true,
			search : true,
			searchOnEnterKey : true,
			showFooter : true,
			showColumns : true,
			showRefresh : true,
			showToggle : true,
			showPaginationSwitch : true,
			showExport : true,
			showFooter : true,
			detailView : true,
			detailFormatter : function(index, row){
				var html = [];
		        $.each(row, function (key, value) {
		            html.push('<p><b>' + key + ':</b> ' + value + '</p>');
		        });
		        return html.join('');
			},
			idField : "id",
			uniqueId : "id",
			clickToSelect : true,
			toolbar: "#toolbar",
			responseHandler : function (res) {
		        $.each(res, function (i, row) {
		            row.state = $.inArray(row.id, selections) !== -1;
		        });
		        return res;
		    },
			columns : [
		                [
		                    {
		                    	title: '状态',
		                        field: 'state',
		                        checkbox: true,
		                        align: 'center',
		                        valign: 'middle'
		                    }, {
		                        title: '客户ID',
		                        field: 'id',
		                        align: 'center',
		                        valign: 'middle',
		                        sortable: true
		                    }, {
		                    	title: '公司名',
		                        field: 'name',
		                        align: 'center',
		                        valign: 'middle',
		                        sortable: true
		                    }, {
		                    	title: '公司性质',
		                        field: 'nature',
		                        align: 'center',
		                        valign: 'middle',
		                        sortable: true
		                    }, {
		                    	title: '公司行业',
		                        field: 'industry',
		                        align: 'center',
		                        valign: 'middle',
		                        sortable: true
		                    }, {
		                    	title: '公司规模',
		                        field: 'size',
		                        align: 'center',
		                        valign: 'middle',
		                        sortable: true
		                    }
		                ]
		          
		            ],
		});
		
		// sometimes footer render error.
		setTimeout(function () {
            $table.bootstrapTable('resetView');
        }, 200);
		
		$table.on('check.bs.table uncheck.bs.table ' +
                'check-all.bs.table uncheck-all.bs.table', function () {
            $remove.prop('disabled', !$table.bootstrapTable('getSelections').length);

            // save your data, here just save the current page
            selections = $.map($table.bootstrapTable('getSelections'), function (row) {
                return row.id
            });
            // push or splice the selections if you want to save all data selections
        });
		
		$table.on('all.bs.table', function (e, name, args) {
	        console.info(name, args);
	    });
		
		$table.on('editable-save.bs.table', function (e, name, args) {
			var field = name;
	        var obj = args;
	        $.post(
	    			'${ctx}/backend/updateuser',
	    			{
	    				userid : obj.id,
	    				username : obj.username,
	    				password : obj.password,
	    			}, function(data) {
	    				if (data.code == '200') {
	    					console.info('updateuser:'+data.msg);
	    				} else if (data.code == '400') {
	    					console.error('updateuser:'+data.msg);	    					
	    				}
	    			},
	    			// 默认返回字符串，设置值等于json则返回json数据
	    			'json').error(function() {
	    				console.error('updateuser:'+"failed");
	    			});
	    });		
		
		$remove.click(function () {
            var ids = $.map($table.bootstrapTable('getSelections'), function (row) {
                return row.id
            });
            $.post(
	    			'${ctx}/backend/deleteuserlist',
	    			{
	    				userlist : ids.toString(),
	    			}, function(data) {
	    				if (data.code == '200') {
	    		            $table.bootstrapTable('remove', {
	    		                field: 'id',
	    		                values: ids
	    		            });
	    		            $remove.prop('disabled', true);
	    					console.info('deletelist:'+data.msg);
	    				} else if (data.code == '400') {
	    					console.error('deletelist:'+data.msg);	    					
	    				}
	    			},
	    			// 默认返回字符串，设置值等于json则返回json数据
	    			'json').error(function() {
	    				console.error('deletelist:'+"failed");
	    			});
        });
		
        $(window).resize(function () {
            $table.bootstrapTable('resetView', {
                height: $(window).height() - $('h1').outerHeight(true)
            });
        });
	});
</script>
</head>

<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
				<div id="toolbar">
        			<button id="remove" class="btn btn-danger" disabled>
            			<i class="glyphicon glyphicon-remove"></i> 删除
        			</button>
    			</div>
				<table id="table"   data-search="true"></table>
			</div>
		</div>
	</div>
</body>
</html>
