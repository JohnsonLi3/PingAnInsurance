<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
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
	class="current">维护审批链</span></div>
<!--content end-->
<div class="formcontent">
<form id="searchform" name="theForm" method="post">
<div class="blueborder">
<div class="title2 margin">查询审批链</div>
<table class="table_search">
	<tr>
		<td width="100px" class="form_text" align="left">审批链标题:</td>
		<td>
			<select id="approveSelectId" name="apprtitle" style="width: 220px;">
				<c:forEach items="${ailistall}" var="ai">
					<option value="${ai.apprtitle}">${ai.apprtitle}</option>
				</c:forEach>
			</select>
		</td>
		<td>
			<input type="button"  value="查 询" class="button btn_xs" onclick="process('search')"/>
			<input type="button" id="add" value="新  增" class="button btn_xs" />
			<input type="button" id="deleteId" value="删  除" class="button btn_xs" onclick="process('delete')" />
		</td>
</tr>
</table>
</div>
	</form>

<div style="height: 5px;"></div>
<table class="table_list">
	<thead>
		<tr>
			<th width="10%">序号</th>
			<th width="10%">处理人账号</th>
			<th width="10%">审批类型</th>
			<th width="20%">审批步骤描述</th>
			<th width="20%">审批链标题/审批链描述</th>
	</tr>
	</thead>
	<tbody id="tabValue">
	<c:forEach items="${ailistall}" var="ai" varStatus="aicount">
		<tr>
			<td>
				${aicount.count}
			</td>
			<td>
				${ai.ename}
			</td>
			<td>
				${ai.apprtype}
			</td>
			<td>
				${ai.apprdescribe}
			</td>
			<td>
				${ai.apprtitle}
			</td>
		</tr>
		</c:forEach>
	</tbody>
</table>


<script type="text/javascript">

function   process(v){  
  if(v=="search"){  
  document.theForm.action="findbyaititle";  
  }else{  
  document.theForm.action="delbyaititle";  
  }  
  document.theForm.submit();  
  }  
	
	//新增
	$("#add").click(function(){
		window.location.href = "addApproveChain.jsp";
	});
	
	//查询方法
	$("#submitId").live("click", function() {
		if($("#approveSelectId option:selected").val()==0){
			alert("请选择查询条件!");
			$("#blueDiv").hide();
			return false;
		}
		$("#blueDiv").show();
		$("#valueId").val($("#approveSelectId option:selected").val());
		$("#valueId1").val($("#approveSelectId option:selected").val());
	});

	//删除
	$("#deleteSunId").live("click", function() {
		if($("#tabValue tr").length==1){
			return false;
		}
		$(this).parent().parent().remove();
	});


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
