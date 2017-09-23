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
<form id="searchform" action="findAllemailtypelist" method="post">
<div class="blueborder">
<div class="title2 margin">查询邮件模板</div>
<table class="table_search margin">
	<tr>
		<td width="100px" class="form_text">模板名称:</td>
		<td width="120px">
		<input type="text" id="serviceItem" name= "emailtypename" style="width: 120px" />
		</td>
		
		<td width="100px" class="form_text">创建时间:</td>
		<td><input type="text" name="createtime" /> </td>
	</tr>
</table>
<div class="textcenter margin">
	<input type="submit" id="submitId" value="查 询" class="button btn_xs" />
	<input type="button" id="add" value="新  增" class="button btn_xs" />
</div>
</div>
</form>
<div class="margin title2">邮件模板列表</div>
<table class="table_list">
	<thead>
		<tr>
			<th width="5%">序号</th>
			<th width="7%">模板序号</th>
			<th width="20%">模板名称</th>
			<th width="11%">创建时间</th>
			<th width="8%">创建人</th>
			<th width="12%">最后更新时间</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody id="tabValue">
	<c:forEach items="${etlst}" var="etlist" varStatus="elcount">
		<tr>
			<td>${elcount.count}</td>
			<td>${etlist.emailtypeno}</td>
			<td>${etlist.emailtypename}</td>
			<td>${etlist.createtime}</td>
			<td>${etlist.createpeop}</td>
			<td>${etlist.lastuptime}</td>
			<td>
				<a href="findbyetn?emailtypename=${etlist.emailtypename}"><input type="button" id="detailId" value="详细信息" class="button btn_xs" /></a>
				<a href="findbyetnup?emailtypename=${etlist.emailtypename}"><input type="button" id="editId" value="修改" class="button btn_xs" /></a>
				<a href="delByetlistid?emailid=${etlist.emailid}"><input type="button" id="deleteId" value="删除" class="button btn_xs" /></a>
			</td>
		</tr>
		</c:forEach>
		</tbody>
</table>
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
	
//详细信息
	$("#detailId").live("click", function() {
		window.location.href = "detailEmailModel.jsp";
	});

	
</script>

</body>
</html>
