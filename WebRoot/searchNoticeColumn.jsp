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
<span class="separator">  >></span><span class="current">公告栏管理</span> >><span
	class="current">维护公告栏</span></div>
<!--content end-->
<div class="formcontent">
<form id="searchform" action="findAllannolist" method="post">
<div class="blueborder">
<div class="title2 margin">查询公告栏</div>
<table class="table_search margin">
	<tr>
		<td width="100px" class="form_text">公告标题:</td>
		<td width="120px"><input type="text" id="serviceItem" name = "infortitle" style="width: 120px" /></td>
		<td width="100px" class="form_text">公告状态:</td>
		<td>
			<select name = "annostatus" style="width: 120px;">
				<option></option>
				<option>未启用</option>
				<option>使用中</option>
				<option>已过期</option>
			</select>
		</td>
	</tr>
</table>
<div class="textcenter margin">
	<input type="submit"  value="查 询" class="button btn_xs" />
	<input type="button" id="add" value="新  增" class="button btn_xs" />
</div>
</div>
</form>
<div class="margin title2">公告栏列表</div>
<table class="table_list" width="1692" >
	<thead>
		<tr>
			<th width="5%">序号</th>
			<th width="13%">信息标题</th>
			<th width="8%">启用日期</th>
			<th width="8%">过期日期</th>
			<th width="11%">创建日期</th>
			<th width="8%">创建人</th>
			<th width="11%">最后更新时间</th>
			<th width="8%">最后更新人</th>
			<th width="8%">公告状态</th>
			<th width="18%">操作</th>
		</tr>
	</thead>
	<tbody id="tabValue">
		<c:forEach items="${alst}" var="annolist" varStatus="alcount">
		<tr>
			<td>${alcount.count}</td>
			<td>${annolist.infortitle}</td>
			<td>${annolist.starttime}</td>
			<td>${annolist.pastdue}</td>
			<td>${annolist.createtime}</td>
			<td>${annolist.createpeop}</td>
			<td>${annolist.lastuptime}</td>
			<td>${annolist.lastuppeop}</td>
			<td>${annolist.annostatus}</td>
			<td>
				<a href="findByInfortitle?infortitle=${annolist.infortitle}"><input type="button" id="detailId" value="详细信息" class="button btn_xs" /></a>
				<a href="findByInfortitleup?infortitle=${annolist.infortitle}"><input type="button" id="editId" value="修  改" class="button btn_xs" /></a>
				<a href="delfromannolist?annolistid=${annolist.annolistid}"><input type="button" value="删  除" class="button btn_xs" /></a>
			</td>
		</tr>
		</c:forEach>
		</tbody>
</table>

</div>

<script type="text/javascript">
	//新增
	$("#add").click(function(){
		window.location.href = "addNoticeColumn.jsp";
	});
	

	//详细信息

	
	//修改
	$("#editId").live("click", function() {
		window.location.href = "editNoticeColumn.jsp";
	});

	
</script>

</body>
</html>
