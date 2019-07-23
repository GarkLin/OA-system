<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>员工管理</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/charCount.js"></script>
<script type="text/javascript" src="js/plugins/ui.spinner.min.js"></script>
<script type="text/javascript" src="js/plugins/chosen.jquery.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/forms.js"></script>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/view.css" rel="stylesheet">
<script src="js/viewCn.js" type="text/javascript"></script>
<script src="js/view.js" type="text/javascript"></script>
<style type="text/css">
table.gridtable {
	font-family: verdana, arial, sans-serif;
	font-size: 20px;
	color: #333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}

table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}

table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<body class="withvernav">

	<div class="bodywrapper">
		<div class="topheader">
			<div class="left">
				<h1 class="logo">
					Aman.<span>da</span>
				</h1>
				<span class="slogan">admin template</span>

				<div class="search">
					<form action="" method="post">
						<input type="text" name="keyword" id="keyword"
							value="Enter keyword(s)" />
						<button class="submitbutton"></button>
					</form>
				</div>
				<!--search-->

				<br clear="all" />

			</div>
			<!--left-->

			<div class="right">
				<div class="notification">
					<a class="count" href="ajax/notifications.html"><span>9</span></a>
				</div>
				<div class="userinfo">
					<img src="images/thumbs/avatar.png" alt="" /> <span>Juan
						Dela Cruz</span>
				</div>
				<!--userinfo-->

				<div class="userinfodrop">
					<div class="avatar">
						<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
						<div class="changetheme">
							Change theme: <br /> <a class="default"></a> <a class="blueline"></a>
							<a class="greenline"></a> <a class="contrast"></a> <a
								class="custombg"></a>
						</div>
					</div>
					<!--avatar-->
					<div class="userdata">
						<h4>Juan Dela Cruz</h4>
						<span class="email">youremail@yourdomain.com</span>
						<ul>
							<li><a href="editprofile.html">Edit Profile</a></li>
							<li><a href="accountsettings.html">Account Settings</a></li>
							<li><a href="help.html">Help</a></li>
							<li><a href="index.html">Sign Out</a></li>
						</ul>
					</div>
					<!--userdata-->
				</div>
				<!--userinfodrop-->
			</div>
			<!--right-->
		</div>
		<!--topheader-->


		<div class="header">
			<ul class="headermenu">
				<li class="current"><a href="dashboard.html"><span
						class="icon icon-flatscreen"></span>人力资源</a></li>
				<li><a href="manageblog.html"><span
						class="icon icon-pencil"></span>水电管理</a></li>
				<li><a href="messages.html"><span class="icon icon-message"></span>我的事务</a></li>
				<li><a href="reports.html"><span class="icon icon-chart"></span>财务管理</a></li>
				<li><a href="reports.html"><span class="icon icon-chart"></span>统计报表</a></li>
			</ul>

			<div class="headerwidget">
				<div class="earnings">
					<div class="one_half">
						<h4>Today's Earnings</h4>
						<h2>$640.01</h2>
					</div>
					<!--one_half-->
					<div class="one_half last alignright">
						<h4>Current Rate</h4>
						<h2>53%</h2>
					</div>
					<!--one_half last-->
				</div>
				<!--earnings-->
			</div>
			<!--headerwidget-->

		</div>
		<!--header-->

		<div class="vernav2 iconmenu">
			<ul>
				<li class="current"><a href="#formsub" class="editor">员工管理</a>
					<span class="arrow"></span>
					<ul id="formsub">
						<li><a href="addUserPage">添加用户</a></li>
						<li><a href="userUpdate">编辑用户</a></li>
						<li class="current"><a href="userList">查询用户</a></li>
					</ul></li>
				<!-- <li><a href="filemanager.html" class="gallery">试用员工</a></li> -->
				<li><a href="myPersonnel" class="elements">我的人事</a></li>
				<li><a href="widgets.html" class="widgets">招聘和配置</a></li>
				<li><a href="calendar.html" class="calendar">考勤管理</a></li>
				<li><a href="support.html" class="support">福利和关怀</a></li>
				<!-- <li><a href="typography.html" class="typo">文字排版</a></li>
            <li><a href="tables.html" class="tables">数据表格</a></li>
			<li><a href="buttons.html" class="buttons">按钮 &amp; 图标</a></li> -->
				<li><a href="#error" class="error">错误页面</a> <span class="arrow"></span>
					<ul id="error">
						<li><a href="notfound.html">404错误页面</a></li>
						<li><a href="forbidden.html">403错误页面</a></li>
						<li><a href="internal.html">500错误页面</a></li>
						<li><a href="offline.html">503错误页面</a></li>
					</ul></li>
				<li><a href="#addons" class="addons">其他页面</a> <span
					class="arrow"></span>
					<ul id="addons">
						<li><a href="newsfeed.html">新闻订阅</a></li>
						<li><a href="profile.html">资料页面</a></li>
						<li><a href="productlist.html">产品列表</a></li>
						<li><a href="photo.html">图片视频分享</a></li>
						<li><a href="gallery.html">相册</a></li>
						<li><a href="invoice.html">购物车</a></li>
					</ul></li>
			</ul>
			<a class="togglemenu"></a> <br /> <br />
		</div>
		<!--leftmenu-->

		<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">在职员工表</h1>

				<span class="pagedesc">公司各部门员工</span>

				<ul class="hornav">
					<li class="current"><a href="#basicform">信息表</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="basicform" class="subcontent">
					<!--contenttitle-->
					<!-- 设置CELLPADDING (内文字与边框间距) 
                                                      设置CELLSPACING （表格单元格间距） -->
					<td id="colloaContent"><table border="0" cellspacing="0"
							cellpadding="0">
							<tbody>
								<tr>
									<td><h1>
											<img style="cursor: pointer;"
												onclick="var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';"
												src="../images/menu.png"> 招聘和配置
										</h1></td>
									<td align="right" id="oWorkflowList"><a title="后退"
										class="button1 button1L" href="javaScript:windowClose();"><i
											class="fa fa-angle-left"></i></a><span id="oWorkflowList1"><a
											class="button1 button1M"
											href="javaScript:windowOpen('workflow.aspx?sid=703110&amp;name=%u62DB%u8058%u7533%u8BF7*&amp;catalogue=703110');"><i
												class="fa fa-plus"></i> 招聘申请*</a></span><a title="刷新"
										class="button1 button1R" href="javaScript:location.reload();"><i
											class="fa fa-bolt"></i></a></td>
								</tr>
							</tbody>
						</table> <br>

						<div id="colloaMenu2">
							<a class="textHighlight"
								href="catalogueEx.aspx?sid=703100&amp;name=%u62db%u8058%u548c%u914d%u7f6e&amp;ex.sid=703110"><img
								src="images/folder.png" border="0"> 招聘管理</a><a
								href="catalogueEx.aspx?sid=703100&amp;name=%u62db%u8058%u548c%u914d%u7f6e&amp;ex.sid=703120"><img
								src="images/folder.png" border="0"> 入职管理</a><a
								href="catalogueEx.aspx?sid=703100&amp;name=%u62db%u8058%u548c%u914d%u7f6e&amp;ex.sid=703150"><img
								src="images/folder.png" border="0"> 转正管理</a><a
								href="catalogueEx.aspx?sid=703100&amp;name=%u62db%u8058%u548c%u914d%u7f6e&amp;ex.sid=703170"><img
								src="images/folder.png" border="0"> 岗位调动管理</a><a
								href="catalogueEx.aspx?sid=703100&amp;name=%u62db%u8058%u548c%u914d%u7f6e&amp;ex.sid=703190"><img
								src="images/folder.png" border="0"> 离职管理</a>
						</div>
						<div id="colloaContent2">
							<script language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=703110&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==110) workflowListOne("workflow.aspx","招聘申请*",703110,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==120) workflowListOne("workflow.aspx","入职申请*",703120,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==150) workflowListOne("workflow.aspx","转正申请*",703150,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==170) workflowListOne("workflow.aspx","岗位调动申请*",703170,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==190) workflowListOne("workflow.aspx","离职申请*",703190,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("workflow.aspx","出差申请*",703210,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("finder.aspx","查找",703215,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("workflow.aspx","外出申请*",703220,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("finder.aspx","查找",703225,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("workflow.aspx","加班申请*",703230,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("finder.aspx","查找",703235,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("workflow.aspx","请休假申请*",703240,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("finder.aspx","查找",703245,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("workflow.aspx","调休申请*",703250,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("finder.aspx","查找",703255,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==510) workflowListOne("workflow.aspx","劳动合同登记*",703510,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==520) workflowListOne("workflow.aspx","员工培训安排*",703520,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==540) workflowListOne("workflow.aspx","员工生日关怀*",703540,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==550) workflowListOne("workflow.aspx","员工专项福利*",703550,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==650) workflowListOne("workflow.aspx","月度绩效考核单*",703650,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==660) workflowListOne("workflow.aspx","季度绩效考核单*",703660,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==670) workflowListOne("workflow.aspx","年度绩效考核单*",703670,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==690) workflowListOne("workflow.aspx","奖励和处罚申请*",703690,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);}</script>
							<script language="javaScript">workflowList(110);</script>
							<table class="tableList" border="0" cellspacing="0"
								cellpadding="0">
								<thead>
									<tr>
										<th>主题</th>
										<th>申请人</th>
										<th>所属部门</th>
										<th>需求岗位</th>
										<th>需求人数</th>
										<th>希望到岗日期</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="javaScript:showItem('事务','1000165');"><i
												class="fa fa-calendar-minus-o fa-lg" style="color: orange;"></i>
												招聘申请-刘峰-1000165 <img src="../images/priority0.gif"
												border="0"></a></td>
										<td>刘峰</td>
										<td>生产部&nbsp;</td>
										<td>初级工程师</td>
										<td>5</td>
										<td>2016/4/30</td>
									</tr>
									<tr>
										<td><a href="javaScript:showItem('事务','1000164');"><i
												class="fa fa-calendar-minus-o fa-lg" style="color: orange;"></i>
												招聘申请-李浩-1000164 <img src="../images/priority0.gif"
												border="0"></a></td>
										<td>李浩</td>
										<td>技术部&nbsp;</td>
										<td>高级技术员</td>
										<td>1</td>
										<td>2016/4/30</td>
									</tr>
									<tr>
										<td><a href="javaScript:showItem('事务','1000166');"><i
												class="fa fa-calendar-minus-o fa-lg" style="color: orange;"></i>
												<span style="color: rgb(204, 0, 0);">招聘申请-王丽萍-1000166</span>
												<img src="../images/priority0.gif" border="0"></a></td>
										<td>王丽萍</td>
										<td>深圳分公司&nbsp;</td>
										<td>销售工程师</td>
										<td>3</td>
										<td>2016/4/22</td>
									</tr>
									<tr>
										<td><a href="javaScript:showItem('事务','1000163');"><i
												class="fa fa-calendar-check-o fa-lg"
												style="color: rgb(60, 188, 60);"></i> 招聘申请-李萌-1000163 <img
												src="../images/priority1.gif" border="0"></a></td>
										<td>李萌</td>
										<td>销售部&nbsp;</td>
										<td>销售助理</td>
										<td>2</td>
										<td>2016/4/13</td>
									</tr>
								</tbody>
							</table>
							<script language="javaScript">cataloguePages(4,20);</script>
							<div id="colloaPages">
								<a title="首页" class="button1 button1L"
									href="javaScript:var n=location.href.indexOf('&amp;page=');location.replace((n>0?location.href.substr(0,n):location.href)+'&amp;page=1');"><i
									class="fa fa-step-backward"></i></a><a title="上页"
									class="button1 button1M"
									href="javaScript:var n=location.href.indexOf('&amp;page=');location.replace((n>0?location.href.substr(0,n):location.href)+'&amp;page=1');"><i
									class="fa fa-backward"></i></a><span class="button1M">共有 4
									条记录，第 1/1 页</span><a title="下页" class="button1 button1M"
									href="javaScript:var n=location.href.indexOf('&amp;page=');location.replace((n>0?location.href.substr(0,n):location.href)+'&amp;page=1');"><i
									class="fa fa-forward"></i></a><a title="尾页"
									class="button1 button1R"
									href="javaScript:var n=location.href.indexOf('&amp;page=');location.replace((n>0?location.href.substr(0,n):location.href)+'&amp;page=1');"><i
									class="fa fa-step-forward"></i></a>
							</div>
						</div></td> <br />

				</div>
				<!--subcontent-->



			</div>
			<!--contentwrapper-->

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->
	<script language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../images/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</script>
</body>
</html>