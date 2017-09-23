<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<link rel="stylesheet" href="css/ui.css" type="text/css" />
<link type="text/css" rel="Stylesheet" href="CSS/tabs.css" />
<link type="text/css" rel="Stylesheet" href="CSS/datepicker.css" />
<link type="text/css" rel="Stylesheet" href="CSS/dialog.css" />

<script language="javascript" type="text/javascript"
	src="jQuery1.3.js"></script>
<script language="javascript" type="text/javascript"
	src="js/jquery-ui-1.7.1.js"></script>
<script language="javascript" type="text/javascript"
	src="js/pa_ui.js"></script>
<script language="javascript" type="text/javascript"
	src="js/ui.js"></script>

</head>
<body class="page">
<!--content begin-->
<div class="sitemappath">当前位置： <span class="root parent">公共设置</span>
<span class="separator">>></span><span class="current">基础信息管理</span>>><span
	class="current">修改基础信息</span></div>
	
<!--content end-->
<div class="formcontent">
<form name="searchform" action="updatedetailinfor" method="post">
<div>
<div class="title2 margin">明细信息：</div>
<table class="table_list">
	<thead>
	
		<tr>
			<th width="15%">分类编号</th>
			<th width="15%">名称</th>
			<th width="10%">实际值</th>
			<th width="20%">排序编号</th>
			<th width="10%">描述</th>
			<th width="10%">操作</th>
		</tr>
			
	</thead>
	<tbody id="tabValue">
			<input type="hidden" name="sbid" value="${diup.sbid}"/>
		<tr>
			<td><input type="text" name="number" value="${diup.number}"/></td>
			<td><input type="text" name="detailname" value="${diup.detailname}"/></td>
			<td><input type="text" name="actualvalue" value="${diup.actualvalue}"/></td>
			<td><input type="text" name="sequenceno"  value="${diup.sequenceno}"/></td>
			<td><input type="text" name="description"  value="${diup.description}"/></td>
			<td><input type="submit" id="addId" value="修 改"class="button btn_xs" /> 
		</tr>
	</tbody>
</table>
</div>
</form>
</div>
</div>
		
			

			

<script language="javascript" type="text/javascript">
	//保存
	$("#saveId").click( function() {
		alert("保存成功");
	});

	

	//新增
	$("#addId").live("click",function(){
		$("#tabValue tr:last").clone(true).insertBefore($("#tabValue tr:last"));
		var count = $("#tabValue tr:last td").eq(0).html();
		$("#tabValue tr:last td").eq(0).html(++count);
	});

	//删除
	$("#deleteId").live("click",function(){
		if($("#tabValue tr").length==1){
			return false;
		}
		$(this).parent().parent().remove();
	});
</script>
</body>
</html>
