<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>数据科技运营管理系统</title>
    <link rel="stylesheet" href="css/ui.css" type="text/css" />
    <link type="text/css" rel="Stylesheet" href="css/tabs.css" />
    <link type="text/css" rel="Stylesheet" href="css/datepicker.css" />
    <link type="text/css" rel="Stylesheet" href="css/dialog.css" />
 <script type="text/javascript" src="js/jQuery1.3.js"></script>
<script  type="text/javascript" src="js/jquery-ui-1.7.1.js"></script>
 <script type="text/javascript" src="js/pa_ui.js"></script>
<script  type="text/javascript" src="js/ui.js"></script>
<script type="text/javascript" src="js/pa_ui_dialog.js"></script>

</head>
<body>
    <!--top begin-->
    <div id="topbar">
        <div id="logo_paic">
        </div>
        <div id="logo_system">
        </div>
        <div id="links">
            <ul>
                <li><a href="http://www.pa18.com" target="_blank">PA18</a></li>
                <li><a href="http://it/service/docc/home.asp" target="_blank">IT服务</a></li>
                <li><a href="#" onclick="showWindown('公告栏列表', 'publicNews.htm')">系统公告</a></li>
            </ul>
        </div>
        <div id="logout" class="blueborder">
            <a href="#">退出系统</a></div>
    </div>
    <!--top end-->
    <!--tab begin-->
    <div class="pa_ui_tabs" pa_ui_name="tabs">
        <div class="pa_ui_tabs_wrapper">
            <ul class="tabs c">
                <!----------------------------------- 1 协议管理 模块主菜单 （对应子菜单ID：sla）----------------------------------->
                <li>
                    <div class="on">
                        <div class="l">
                        </div>
                        <div>
                            <a href="#tab1,#sla" title="协议管理">协议管理</a></div>
                        <div class="rr">
                        </div>
                        <div class="jt">
                        </div>
                    </div>
                </li>
                <!----------------------------------- 2 生产信息管理 模块主菜单 （对应子菜单ID：prdInf）----------------------------------->
                <li>
                    <div class="on">
                        <div class="ll">
                        </div>
                        <div>
                            <a href="#tab1,#prdInf" src="blank.htm" target="ifFrame" title="生产信息管理">生产信息管理</a></div>
                        <div class="rr">
                        </div>
                    </div>
                </li>
                <!----------------------------------- 3 工时管理 模块主菜单 （对应子菜单ID：workManage）----------------------------------->
                <li>
                    <div class="on">
                        <div class="ll">
                        </div>
                        <div>
                            <a href="#tab1,#workManage" src="blank.htm" target="ifFrame" title="工时管理">工时管理</a></div>
                        <div class="rr">
                        </div>
                    </div>
                </li>
                <!----------------------------------- 4 员工绩效 模块主菜单 （对应子菜单ID：empPerformance）----------------------------------->
                <li>
                    <div class="on">
                        <div class="ll">
                        </div>
                        <div>
                            <a href="#tab1,#empPerformance" src="blank.htm" target="ifFrame" title="员工绩效">员工绩效</a></div>
                        <div class="rr">
                        </div>
                    </div>
                </li>
                <!----------------------------------- 5 指标数据管理 模块主菜单 （对应子菜单ID：orgPerformance）----------------------------------->
                <li>
                    <div class="on">
                        <div class="ll">
                        </div>
                        <div>
                            <a href="#tab1,#orgPerformance" src="blank.htm" target="ifFrame" title="指标数据管理">指标数据管理</a>
                        </div>
                        <div class="rr">
                        </div>
                    </div>
                </li>
                <!----------------------------------- 6 账单管理 模块主菜单 （对应子菜单ID：bill）----------------------------------->
                <li>
                    <div class="on">
                        <div class="ll">
                        </div>
                        <div>
                            <a href="#tab1,#bill" src="blank.htm" target="ifFrame" title="账单管理">账单管理</a></div>
                        <div class="rr">
                        </div>
                    </div>
                </li>
                <!----------------------------------- 7 报表 模块主菜单 （对应子菜单ID：report）----------------------------------->
                <li>
                    <div class="on">
                        <div class="ll">
                        </div>
                        <div>
                            <a href="page/systemManage/searchBaseData.htm" src="blank.htm" target="ifFrame" title="报表">报表</a></div>
                        <div class="rr">
                        </div>
                    </div>
                </li>
                <!----------------------------------- 8 公共设置 模块主菜单 （对应子菜单ID：sys）----------------------------------->
                <li>
                    <div class="on">
                        <div class="ll">
                        </div>
                        <div>
                            <a href="#tab1,#sys" src="blank.jsp" target="ifFrame" title="系统设置">系统设置</a></div>
                        <div class="rr">
                        </div>
                    </div>
                </li>
                <!----------------------------------- 9 权限维护 模块主菜单 （对应子菜单ID：permission）----------------------------------->
                <li>
                    <div class="on">
                        <div class="ll">
                        </div>
                        <div>
                            <a href="#tab1,#permission" src="blank.htm" target="ifFrame" title="权限维护">权限维护</a></div>
                        <div class="rr">
                        </div>
                    </div>
                </li>
            </ul>
            <div class="corner">
            </div>
            <div id="switch" class="open">
            </div>
        </div>
        <div class="pa_ui_tabs_content">
            <table class="menu">
                <tr>
                    <td>
                        <!------------------------------ 1 协议管理 子菜单  ------------------------------>
                        <ul id="sla" class="menu" pa_ui_name="menu">
                            <li><a href="page/agreement/client_query_info.htm" target="framepage" title="客户信息管理">客户信息管理</a></li>
                            <li><a href="page/agreement/searchServiceItem.htm" target="framepage" title="服务项目管理">服务项目管理</a></li>
                            <li><a href="page/agreement/modifyAgreement.htm" target="framepage" title="协议归档管理">协议归档管理</a></li>
                            <li><a href="page/agreement/bargain/modifyBargain.htm" target="framepage" title="合同归档管理">合同归档管理</a></li>
                        </ul>
                        <!------------------------------ 2 生产信息管理 子菜单  ------------------------------>
                        <ul id="prdInf" class="menu" pa_ui_name="menu">
                            <li><a href="page/productionInfo/employee_query_info.htm" target="framepage" title="新人注册">
                                人员信息管理</a>
                                <ul>
                                    <li><a href="page/productionInfo/employee_query_info.htm" target="framepage" title="新人注册">
                                        新人注册</a></li>
                                    <li><a href="page/productionInfo/employee_translate_info.htm" target="framepage"
                                        title="调动管理">调动管理</a></li>
                                    <li><a href="page/productionInfo/employee_temp_app.htm" target="framepage" title="调动/借调申请">
                                        调动/借调申请</a></li>
                                    <li><a href="page/productionInfo/enjoy_performance.htm" target="framepage" title="绩效资格管理">
                                        绩效资格管理</a></li>
                                    <li><a href="page/productionInfo/enjoy_performance_search.htm" target="framepage"
                                        title="申请状态查询">申请状态查询</a></li>
                                </ul>
                            </li>
                            <li><a href="page/productionInfo/productionStructure.htm" target="framepage" title="生产架构维护">
                                生产架构维护</a></li>
                            <li><a href="page/productionInfo/production_station_info.htm" target="framepage" title="生产岗位维护">
                                生产岗位维护</a> 
                                 <ul>
                                    <li><a href="page/productionInfo/production_station_info.htm" target="framepage" title="查询生产岗位">
                                        查询生产岗位</a></li>
                                    <li><a href="#" target="framepage"
                                        title="生产岗位设置">生产岗位设置</a>
                                    </li>
                                </ul>
                             </li>
                           
                        </ul>
                        <!------------------------------ 3 工时管理 子菜单  ------------------------------>
                        <ul id="workManage" class="menu" pa_ui_name="menu">
                            <li><a href="page/workManagement/overtime_for.htm" target="framepage" title="加班申请">加班管理</a>
                                <ul>
                                    <li><a href="page/workManagement/overtime_for.htm" target="framepage" title="加班申请">加班申请</a></li>
                                    <li><a href="page/workManagement/overtime_confirmed.htm" target="framepage" title="加班确认">
                                        加班确认</a></li>
                                </ul>
                            </li>
                            <li><a href="page/workManagement/hugh_batch_transfer.htm" target="framepage" title="调休批量处理">
                                调休批量处理</a></li>
                            <li><a href="page/workManagement/temporary_offline.htm" target="framepage" title="临时下线管理">
                                临时下线管理</a>
                                <ul>
                                    <li><a href="page/workManagement/temporary_offline.htm" target="framepage" title="临时下线申请">
                                        临时下线申请</a></li>
                                    <li><a href="page/workManagement/temporary_search.htm" target="framepage" title="临时下线撤销">
                                        临时下线撤销</a></li>
                                </ul>
                            </li>
                            <li><a href="page/workManagement/hughlock_adjustment.htm" target="framepage" title="工时基础设置">
                                工时基础设置</a>
                                <ul>
                                    <li><a href="page/workManagement/hughlock_adjustment.htm" target="framepage" title="调休锁定期设置">
                                        调休锁定期设置</a></li>
                                    <li><a href="page/workManagement/hughtime_adjustment.htm" target="framepage" title="调休锁定期设置">
                                        加班条件设置</a></li>
                                   
                                </ul>
                            </li>
                            <li><a href="page/workManagement/upload_attendance.htm" target="framepage" title="上载出勤信息 ">
                                上载出勤信息</a></li>
                        </ul>
                        <!------------------------------ 4 员工绩效 子菜单  ------------------------------>
                        <ul id="empPerformance" class="menu" pa_ui_name="menu">
                         <li><a href="page/empPerformance/assesschemeManage/set_dynmaictable.htm" target="framepage">基础设置</a></li> 
                            <li><a href="page/empPerformance/evaluation/search_appraisal.htm" target="framepage">基础数据上载</a>
                                	<ul>   
                                		<li><a href="page/empPerformance/evaluation/search_appraisal.htm" target="framepage">主观评分上载</a></li>
                                		<li><a href="page/empPerformance/evaluation/search_appraisal.htm" target="framepage">主观排名上载</a></li>
                                	</ul>
                            </li>    
                            <li><a href="page/empPerformance/assesschemeManage/query_assessscheme.htm" target="framepage"
                                title="考核规则管理">考核规则管理</a></li>
                            <li><a href="page/empPerformance/showAssessmentGroup.htm" target="framepage">考核组管理</a></li>
                              <li><a href="page/empPerformance/assessplan/query_assessplan.htm" target="framepage">考核方案管理</a></li>
                            <li><a href="page/empPerformance/evaluation/competent_score.htm" target="framepage"
                                title="员工绩效计算">员工绩效计算管理</a>
                                <ul>
                                 	<li><a href="page/empPerformance/evaluation/competent_score.htm" target="framepage">主观评分</a></li>
                                	<li><a href="page/empPerformance/evaluation/competent_order.htm" target="framepage">主观排名</a></li>
                                    <li><a href="page/empPerformance/percalculate/float_coef_perf_support.htm" target="framepage">绩效系数设置</a></li>
                                </ul>
                            </li>
                            <li><a href="page/empPerformance/result_search.htm" target="framepage">绩效结果管理</a>
                                <ul>	
                                	<li><a href="page/empPerformance/searchPerResultToPeople.htm" target="framepage">到人绩效查询</a></li>
                                	<li><a href="page/empPerformance/searchPerResultToGroup.htm" target="framepage">到组绩效查询</a></li>
                                </ul>
                            </li>
                            <li><a href="page/empPerformance/assesschemeManage/float_busywork_result.htm" target="framepage">绩效重算</a>
                            </li>   
                            <li><a href="page/empPerformance/assesschemeManage/protectionDateSet.htm" target="framepage">设置绩效保护期</a>
                            </li>   
                        </ul>
                        <!------------------------------ 5 指标数据管理 子菜单  ------------------------------>
                        <ul id="orgPerformance" class="menu" pa_ui_name="menu">
                            <li><a href="page/orgPerformance/searchTargetWarehouse.htm" target="framepage">指标定义管理</a>
                                <ul>
                                    <li><a href="page/orgPerformance/searchTargetWarehouse.htm" target="framepage">维护指标定义</a></li>
                                    <li><a href="page/orgPerformance/targetWarehouseVsServiceItem.htm" target="framepage">
                                        维护服务项目关系</a></li>
                                    <li><a href="page/orgPerformance/targetWarehouseVsRule.htm" target="framepage">维护计算规则关系</a></li>
                                </ul>
                            </li>
                            <li><a href="page/orgPerformance/searchTargetRule.htm" target="framepage">计算规则管理</a>
                                <ul style="width: 130px;">
                                    <li><a href="page/orgPerformance/searchTargetRule.htm" target="framepage">维护计算规则</a></li>
                                    <li style="width: 120px;"><a href="page/orgPerformance/targetRuleVsBaseData.htm"
                                        target="framepage">维护基础数据定义关系</a></li>
                                </ul>
                            </li>
                            <li><a href="page/orgPerformance/searchBaseDataDefine.htm" target="framepage">基础数据定义管理</a></li>
                            <li><a href="page/orgPerformance/searchBaseData.htm" target="framepage">基础数据管理</a></li>
                            <li><a href="page/orgPerformance/searchDeptPerformance.htm" target="framepage">确认指标结果</a>
                            </li>          
                        </ul>
                        <!------------------------------ 6 账单管理 子菜单  ------------------------------>
                        <ul id="bill" class="menu" pa_ui_name="menu">
                            <li><a href="page/bill/confirm_bill_basedata.htm" target="framepage" title="维护账单基础数据">
                                账单基础数据管理</a>
                                <ul>
                                    <li><a href="page/bill/query_bill_exonerative.htm" target="framepage" title="维护手工免责信息">
                                        维护手工免责信息</a></li>
                                    <li><a href="page/bill/confirm_bill_basedata.htm" target="framepage" title="确认账单基础数据">
                                        确认账单基础数据</a>
                                </ul>
                            </li>
                            <li><a href="page/bill/edit_bill_regulation.htm" target="framepage" title="维护账单计算规则">
                                账单计算规则管理</a>
                                <ul style="width: 150px;">
                                    <li><a href="page/bill/edit_bill_regulation.htm" target="framepage" title="查询账单计算规则">
                                        查询账单计算规则</a> </li>
                                    <li><a href="page/bill/regulationVsBaseData.htm" target="framepage" title="维护基础数据定义关系">
                                        维护基础数据定义关系</a> </li>
                                </ul>
                            </li>
                            <li><a href="page/bill/query_bill_slipcover.htm" target="framepage" title="协议账单参数设置">协议账单参数设置</a>
                                <ul style="width: 150px;"> 
                                    <li><a href="page/bill/query_bill_slipcover.htm" target="framepage" title="查询协议账单参数设置">
                                        查询协议账单参数设置</a></li>
                                    <li><a href="page/bill/slipcover_target_Rule.htm" target="framepage" title="维护计算规则关系">
                                        计算规则关系管理</a></li>
                                </ul>
                            </li>
                            <li><a href="page/bill/query_bill_slipcover_bargain.htm" target="framepage" title="合同账单参数设置">合同账单参数设置</a>
                                <ul style="width: 150px;">  
                                    <li><a href="page/bill/query_bill_slipcover_bargain.htm" target="framepage" title="合同账单参数设置">
                                        查询合同账单参数设置</a></li>
                                    <li><a href="page/bill/slipcover_target_Rule.htm" target="framepage" title="维护计算规则关系">
                                        计算规则关系管理</a></li>
                                </ul>
                            </li>
                            <li><a href="page/bill/searchBillManage.htm" target="framepage" title="协议账单管理">协议账单管理</a>
                                <ul>
                                    <li><a href="page/bill/searchBillManage.htm" target="framepage" title="查询协议账单">查询协议账单</a></li>   
                                    <li><a href="page/bill/confirmBillManage.htm" target="framepage" title="调整协议账单">调整协议账单</a></li>
                                    <li><a href="page/bill/splitBillManage.htm" target="framepage" title="确认协议账单">确认协议账单</a></li>
                                    
                                </ul>
                            </li>
                            <li><a href="page/bill/bargain/searchBillManageBargain.htm" target="framepage" title="合同账单管理">
                                合同账单管理</a>
                                <ul>
                                    <li><a href="page/bill/bargain/searchBillManageBargain.htm" target="framepage" title="查询合同账单">
                                        查询合同账单</a></li>
                                    <li><a href="page/bill/bargain/confirmBillManageBargain.htm" target="framepage" title="调整合同账单">
                                        调整合同账单</a></li>
                                    <li><a href="page/bill/bargain/splitBillManageBargain.htm" target="framepage" title="确认合同账单">
                                        确认合同账单</a></li>
                                </ul>
                            </li>
                        </ul>
                        
                        <!------------------------------ 8 公共设置 子菜单  ------------------------------>
                        <ul id="sys" class="menu" pa_ui_name="menu">
                            <li><a href="findAllbasedatalist" target="framepage" title="基础信息管理">
                                基础信息管理</a></li>
                            <li><a href="findAllannolist" target="framepage" title="公告栏管理">
                                公告栏管理</a></li>
                            <li><a href="findallai" target="framepage" title="审批链管理">
                                审批链管理</a></li>
                            <li><a href="findAllemailtypelist" target="framepage" title="新增邮件模板">
                                邮件模板管理</a></li>
                        </ul>
                        <!------------------------------ 9  权限维护子菜单  ------------------------------>
                        <ul id="permission" class="menu" pa_ui_name="menu">
                            <li><a href="page/powerManage/searchRoleManage.htm" target="framepage">角色管理</a></li>
                            <li><a href="page/powerManage/searchUserRoleManage.htm" target="framepage">用户角色管理</a></li>
                            <li><a href="page/powerManage/searchUserRackManage.htm" target="framepage">用户生产架构管理</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
            <div class="top">
                <div class="lefttop">
                </div>
                <div class="righttop">
                </div>
            </div>
            <div class="content">
                <div id="tab1" class="tabs">
                    <iframe id="framepage" name="framepage" src="blank.jsp" frameborder="0" height="auto">
                    </iframe>
                </div>
            </div>
            <div class="bottom">
                <div class="leftbottom">
                </div>
                <div class="rightbottom">
                </div>
            </div>
        </div>
    </div>
    <!--tab end-->
    <!--footer begin-->
    <div id="footer">
        &copy;&nbsp;2009&nbsp;中国平安保险（集团）股份有限公司&nbsp;版权所有
    </div>
    <!--footer end-->
</body>
</html>
