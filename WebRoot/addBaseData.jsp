<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<span class="separator">>></span><span class="current">基础信息管理</span>>><span
	class="current">新增基础信息</span></div>
	
<!--content end-->
<div class="formcontent">
<div>
<div class="title2 margin">明细信息：</div>
<table class="table_list">

	<thead>
		<tr>
			<th width="5%">序号</th>
			<th width="10%">编码</th>
			<th width="15%">名称</th>
			<th width="15%">实际值</th>
			<th width="10%">排序编号</th>
			<th width="20%">描述</th>
			<th width="20%">操作</th>
		</tr>
		
	</thead>
		<c:forEach  items="${dilst}" var="detailinfor" varStatus="dicount">
	<tbody id="tabValue">
		<tr>
			<td>${dicount.count }</td>
			<td>${detailinfor.number}</td>
			<td>${detailinfor.detailname}</td>
			<td>${detailinfor.actualvalue}</td>
			<td>${detailinfor.sequenceno}</td>
			<td>${detailinfor.description}</td>
			<td> <a href="delfromdetailinfor?sbid=${detailinfor.sbid}"><input type="button" id="deleteId" value="删  除" class="button btn_xs" /></a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</div>
</body>
</html>
			
