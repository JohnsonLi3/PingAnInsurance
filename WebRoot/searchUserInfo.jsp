<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<link rel="stylesheet" href="css/ui.css" type="text/css" />
<link type="text/css" rel="Stylesheet" href="css/tabs.css" />
<link type="text/css" rel="Stylesheet"
	href="css/datepicker.css" />
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
<div class="sitemappath">·当前位置： <span>选择员工</span></div>
	
<div class="formcontent"><!--content end-->

<div class="blueborder">
<div class="title2 margin">查询员工</div>
<table align="center">
	<form action="findbyempid" method="post">
	<tr>
		<td width="100px" class="form_text">员工UM编码:</td>
		<td>
			<input type="text"  name="empid"/>
		</td>
		<td>
			<input type="submit" id="submitId" value="查 询" class="button btn_xs" />
		</td>
	</tr>
	</form>
</table>
</div>

<div id="blueDiv">
<div class="margin title2">查询列表</div>
<table class="table_list">
	<thead>
		<tr>
			<th width="5%"><input type="checkbox" id="checkId" value="0" /></th>
			<th width="5%">序号</th>
			<th width="10%">员工名字</th>
			<th width="20%">员工编号</th>
		</tr>
			</thead>
	<tbody id="tabValue" >
		<c:forEach items="${eplst}" var="et" varStatus="etcount">
		<tr>
			<td><input type="checkbox" value="${et.ename}" /></td>
			<td>${etcount.count}</td>
			<td>${et.ename}</td>
			<td>${et.empid}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</div>
<div class="textcenter margin">
	<input type="button" id="confirmId" value="确定" class="button btn_xs" />
	<input type="button" id="cancelId" value="取消" class="button btn_xs" />
</div>

</div>

<script language="Javascript">
	
	//全选
	$("#checkId").click(function(){
		if($(this).attr("checked")){
			$("#tabValue input:checkbox").attr("checked","checked");
		}else{
			$("#tabValue input:checkbox").attr("checked","");
		}
	});

	//单选
	$("#tabValue input:checkbox").live("click",function(){
		if($(this).attr("checked")){
			$("#checkId").attr("checked","checked");
		}
	});

	//确定
	$("#confirmId").click(function(){
		if(!$(":checkbox").attr("checked")){
			alert("请选择人员信息");
			return false;
		}
		var name="";
		//获得所有选择的用户名字
		$(":checkbox").each(function(){
			if($(this).attr("checked")&&$(this).attr("id")!="checkId"){
				name +=$(this).val()+" ";
			}
		});
		parent.addUserInfo(name);
		parent.$.pa_ui.dialog.close();	
	});

	//取消
	$("#cancelId").click(function(){
		$(":checkbox").attr("checked","");
	});
</script>

</body>
</html>
