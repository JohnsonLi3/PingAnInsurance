<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<span class="separator">>></span><span class="current">公告栏管理</span>>><span
	class="current">公告栏详情</span></div>
	
<!--content end-->
<div class="formcontent">
<form name="searchform" action="insertanno" method="post">
<div class="blueborder">
<div class="title2 margin">公告栏：</div>
<table class="table_list"  >
	<thead>
		<tr>
			<th width="5%">消息标题</th>
			<th width="13%">消息内容</th>
			<th width="8%">消息备注</th>
			<th width="8%">启用日期</th>
			<th width="11%">过期日期</th>
		</tr>
	</thead>
	
	<tbody id="tabValue">
	<c:forEach items="${atlst}" var="anno" >
			<tr>
			<td>${anno.infortitle}</td>
			<td>${anno.information}</td>
			<td>${anno.inforcomment}</td>
			<td>${anno.starttime}</td>
			<td>${anno.pastdue}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>

<div class="textcenter margin">
	 <input type="button" id="backId" value="返回" class="button btn_xs" />
</form>
</div>



<script language="javascript" type="text/javascript">
	

	//返回
	$("#backId").click( function() {
		window.history.back();
	});

</script>

</body>
</html>
