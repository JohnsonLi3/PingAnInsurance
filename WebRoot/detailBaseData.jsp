<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<link rel="stylesheet" href="css/ui.css" type="text/css" />
<link type="text/css" rel="Stylesheet" href="css/tabs.css" />
<link type="text/css" rel="Stylesheet" href="css/datepicker.css" />
<link type="text/css" rel="Stylesheet" href="CSS/dialog.css" />

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
<span class="separator">>></span><span class="current">基础信息管理</span>>><span
	class="current">查看基础信息</span></div>

<!--content end-->
<div class="formcontent">
<form name="searchform" action="insertdetailinfor" method="post">
<div class="title2 margin">明细信息：</div>
<div>
<table class="table_list">

	<thead>
		<tr>
			<th width="10%">编码</th>
			<th width="15%">名称</th>
			<th width="15%">实际值</th>
			<th width="10%">排序编号</th>
			<th width="20%">描述</th>
			<th width="10%">操作</th>
		</tr>
	</thead>
		
	<tbody id="tabValue">
		<tr>
			<td><input type="text" name="number"/></td>
			<td><input type="text" name="detailname"/></td>
			<td><input type="text" name="actualvalue"/></td>
			<td><input type="text" name="sequenceno"/></td>
			<td><input type="text" name="description"/></td>
			<td><input type="submit" id="addId" value="新  增" class="button btn_xs" />
			</td>
		</tr>
	</tbody>
</table>
</div>
</form>
</div>
</body>
</html>
	
