<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<link type="text/css" rel="stylesheet" href="css/ui.css" />
<link type="text/css" rel="Stylesheet" href="css/tabs.css" />
<link type="text/css" rel="Stylesheet" href="css/datepicker.css" />
<link type="text/css" rel="Stylesheet" href="css/dialog.css" />

<script language="javascript" type="text/javascript"
	src="js/jQuery1.3.js"></script>

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
<span class="separator">  >></span><span class="current">邮件模板管理</span> >><span
	class="current">维护邮件模板</span></div>
<!--content end-->
<div class="formcontent">
<form id="searchform" action="" method="post">
<div class="blueborder">
<div class="title2 margin">查询邮件模板</div>
</div>
<div class="margin title2">邮件模板详情列表</div>
<table class="table_list">
	<thead>
		<tr>
			<th width="10%">序号</th>
			<th width="20%">模板名称</th>
			<th width="30%">模板内容</th>
			<th width="30%">模板说明</th>
			</tr>
	</thead>
	<tbody id="tabValue">
		<c:forEach items="${etall}" var="et"  varStatus="etcount">
		<tr>
			<td>${etcount.count}</td>
			<td>${et.emailtypename}</td>
			<td>${et.emailtypecon}</td>
			<td>${et.emailtypedesc}</td>
				</td>
		</tr>
		</c:forEach>
		</tbody>
</table>
</form>
</div>

<script type="text/javascript">
	//新增
	$("#add").click(function(){
		window.location.href = "addEmailModel.jsp";
	});
	
	//修改
	$("#editId").live("click",function(){
		window.location.href = "editEmailModel.jsp";
	});
	
	//查询方法
	$("#submitId").live("click", function() {
		alert("查询成功");
	});

	//详细信息
	$("#detailId").live("click", function() {
		window.location.href = "detailEmailModel.jsp";
	});

	//删除
	$("#deleteId").live("click", function() {
		if (confirm('是否要删除？')) {
			$(this).parent().parent().remove();
			alert("删除成功。");
		}
	});
</script>

</body>
</html>
