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
	class="current">新增公告栏</span></div>
	
<!--content end-->
<div class="formcontent">
<form name="searchform" action="insertanno" method="post">

<div>
<div class="title2 margin">公告栏：</div>
<table class="table_form">
	<tr>
		<td class="td_title">消息标题</td>
		<td colspan="3"><input type="text" name="infortitle"  /></td>
	</tr>
	<tr>
		<td class="td_title">消息内容</td>
		<td colspan="3"><textarea rows="3" name="information" cols="100"></textarea></td>
	</tr>
	<tr>
		<td class="td_title">消息备注</td>
		<td colspan="3"><textarea rows="3" name="inforcomment" cols="100"></textarea></td>
	</tr>
	<tr>
		<td class="td_title">启用日期</td>
		<td>
			<input type="text" name="starttime" />
		</td>
		<td class="td_title">过期日期</td>
		<td>
			<input type="text" name="pastdue" /> 
		</td>
	</tr>
</table>
</div>

<div class="textcenter margin">
	 <input type="submit" id="saveId" value="保存" class="button btn_xs" />
	 <input type="button" id="backId" value="返回" class="button btn_xs" />
</div>
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
