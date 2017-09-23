<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<span class="separator">  >></span><span class="current">审批链管理</span> >><span
	class="current">新增审批链</span></div>
<!--content end-->
<div class="formcontent">

<form id="searchform" action="insertai" method="post">
<div id="blueDiv">
<table class="table_form">
	<tr>
		<td class="td_title" align="left" width="10%">审批链标题：</td>
		<td><input type="text" name="apprtitle" value="" style="width: 70%" /></td>
	</tr>
	<tr>
		<td class="td_title" align="left" width="10%">审批链描述：</td>
		<td><input type="text"    width: 70%"  /></td>
	</tr>
</table>

<div class="margin title2">审批人信息</div>
<table class="table_list">
	<thead>
		<tr>
			<th width="10%">处理人账号</th>
			<th width="10%">审批类型</th>
			<th width="20%">审批步骤描述</th>
			<th width="10%">操作</th>
		</tr>
	</thead>
	<tbody id="tabValue">
		<tr>
			<td>
				<input type="text" name = "ename" value="请选择" id="userId" style="width: 90%"/>
			</td>
			<td>
				<select name="apprtype" style="width: 90%">
					<option selected="selected">请选择</option>
					<option>传阅</option>
					<option>协同批示</option>
					<option>顺序批示</option>
				</select>
			</td>
			<td>
				<input type="text" name = "apprdescribe"   style="width: 90%"/>
			</td>
			<td>
				<input type="submit" id="addId" value="新  增" class="button btn_xs" />
			</td>
		</tr>
	</tbody>
</table>
</div>
</form>

<script type="text/javascript">

	
	//处理人
	$("#userId").live("click",function(){
		showWindown("选择处理人","searchUserInfo.jsp");
	});
	
	//赋值
	function addUserInfo(name){
		$("#userId").val(name);
	}

	//弹出窗口公共方法
	function showWindown(title,url){
		$.pa_ui.dialog.open({
	    	title:title,
	    	width:700,
		    height:500,
		    url:url,
		    frameOverlay:true,
		    modal:true
	    });
	    return false;
	}
</script>

</body>
</html>
