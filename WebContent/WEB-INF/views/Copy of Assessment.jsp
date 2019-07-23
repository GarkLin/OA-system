<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>考勤管理</title>
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
				<table border="1">
			<tr>
	                <td><div class="left">
	                <span class="slogan">当前登陆用户：${sessionScope.globle_user.name }</span></div></td>
	                <td><div class="left"><a href="logout" target="parent" class="slogan">操作：退出</a></div></td>
	        </tr>
	     </table>
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
        	<li class="current"><a href="userHome"><span class="icon icon-flatscreen"></span>人力资源</a></li>
            <li><a href="waterManage?id=1"><span class="icon icon-pencil"></span>水电管理</a></li>
            <li><a href="Transaction"><span class="icon icon-message"></span>我的事务</a></li>
            <li><a href="Finance"><span class="icon icon-chart"></span>财务管理</a></li>
            <li><a href="reports"><span class="icon icon-chart"></span>统计报表</a></li>
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
				<li><a href="#formsub" class="editor">员工管理</a> <span
					class="arrow"></span>
					<ul id="formsub">
						<li><a href="addUserPage">添加用户</a></li>
						<li><a href="userUpdate">编辑用户</a></li>
						<li class="current"><a href="userList">查询用户</a></li>
					</ul></li>
				<!-- <li><a href="filemanager.html" class="gallery">试用员工</a></li> -->
				<li><a href="myPersonnel" class="elements">我的人事</a></li>
				<li><a href="Recritment?id=0" class="widgets">招聘和配置</a></li>
				<li class="current"><a href="Assessment?id=1" class="calendar">考勤管理</a></li>
				<li><a href="Welfare?id=1" class="support">福利和关怀</a></li>
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
				<h1 class="pagetitle">考勤管理</h1>

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
					<td id="colloaContent">
					<table border="0" cellspacing="0"
							cellpadding="0">
							<tbody>
								<tr>
									<td><h1>
											<img style="cursor: pointer;"
												onclick="var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';">
											招聘和配置
										</h1></td>
									<td align="right" id="oWorkflowList">
									<span id="oWorkflowList1"><a
											class="button1 button1M"
											href="table_assessment">
											<i class="fa fa-plus"></i> 出差申请*</a>
									</span>
									</td>
								</tr>
							</tbody>
						</table> <br>

						<div id="colloaMenu2">
							<a class="textHighlight" href="Assessment?id=1"><img
								src="images/folder.png" border="0"> 出差申请</a><a
								href="Assessment2?id=2"><img src="images/folder.png" border="0">
								外出申请</a>
								<a href="Assessment3?id=3"><img src="images/folder.png" border="0">
								 加班申请</a>
								<a href="Assessment4?id=4"><img src="images/folder.png" border="0">
								 请休假申请</a>
								<a href="Assessment5?id=5"><img src="images/folder.png" border="0">
								调休申请</a>
								<a href="Assessment6?id=6"><img src="images/folder.png" border="0">
								外勤定位</a>
						</div>
						<div id="colloaContent2">
							
							<table class="tableList" border="0" cellspacing="0"
								cellpadding="0">
								<thead>
									<tr>
										<th>主题</th>
										<th>申请人</th>
										<th>所属部门</th>
										<th>联系电话</th>
										<th>时间段</th>
									</tr>
								</thead>
								<tbody>
								
								<s:iterator value="#request.alist" id="assessment">
            							<tr>
                								<td><img src="images/priority0.gif"
												border="0"><s:property value="Assessment_way"/></td>
                								<td><s:property value="Assessment_name"/></td>
                								<td><s:property value="Assessment_department"/></td>
                								<td><s:property value="Assessment_phone"/></td>
               									<td><s:property value="Assessment_time"/></td>
            							</tr>
        						</s:iterator>
        						
								</tbody>
							</table>
						</div></td> <br />

				</div>
				<!--subcontent-->



			</div>
			<!--contentwrapper-->

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->
</body>
</html>