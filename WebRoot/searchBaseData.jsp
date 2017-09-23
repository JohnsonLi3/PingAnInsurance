<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<div class="sitemappath">当前位置：<span class="root parent">公共设置</span>
<span class="separator">>></span><span class="current">基础数据管理</span>
>><span class="current">维护基础数据</span></div>
<!--content end-->
<div class="formcontent">
<form id="searchform" action="findAllbasedatalist" method="post">
<div class="blueborder">
<div class="title2 margin">查询基础数据</div>
<table class="table_search margin">
	<tr>
		<td width="100px" class="form_text">分类编码:</td>
		<td width="120px"><input type="text"  
		style="width: 120px" name="categoryid" /></td>
		
		<td width="100px" class="form_text">分类名称:</td>
		<td width="120px"><input type="text"
		style="width: 120px" name="categoryname"/></td>
	</tr>
</table>
<div class="textcenter margin">
	<input type="submit" value="查 询" class="button btn_xs" />
	<input type="button" id="add" value="明细信息" class="button btn_xs" />
</div>
</div>
</form>
<div class="margin title2">基础数据列表</div>
<table class="table_list">
	<thead>
	<tr>
			<th width="5%">序号</th>
			<th width="6%">分类编号</th>
			<th width="6%">分类名称</th>
			<th width="12%">创建时间</th>
			<th width="8%">创建人</th>
			<th width="12%">最后更新时间</th>
			<th width="10%">最后更新人</th>
			<th width="15%">操作</th>
		</tr>
	</thead>
	<tbody id="tabValue">
<c:forEach items="${dblst}" var="database" varStatus="dbcount">		
		<tr>
			
			<td>${dbcount.count }</td>
			<td>${database.categoryid}</td>
			<td>${database.categoryname}</td>
			<td> ${database.createtime}</td>
			<td>${database.createpeop}</td>
			<td>${database.lastuptime}</td>
			<td>${database.lastuppeop}</td>
			<td>
				<a href="finddetailinforBySbid?sbid=${database.sbid}"><input type="button" id="detailId"  value="详细信息" class="button btn_xs" /></a>
				<a href="finddetailinforupdate?sbid=${database.sbid}"><input type="button" id="editId" value="修  改" class="button btn_xs" /></a>
				<a href="delfromdatabase?sbid=${database.sbid}"><input type="button" id="deleteId" value="删  除" class="button btn_xs" /></a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</div>
<script type="text/javascript">
	//新增
	$("#add").click(function(){
		window.location.href = "findAlldetailinfor";
	});
	
	//查询方法
	$("#submitId").live("click", function() {
		alert("查询成功");
	});

	
	//修改
	$("#editId").live("click", function() {
		window.location.href = "editBaseData.jsp";
	});

	
</script>

</body>
</html>
