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
				<h1 class="logo">小区.<span>物业</span></h1>
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
								<span class="slogan">当前登陆用户：${sessionScope.globle_user.name }</span>
							</div></td>
						<td><div class="left">
								<a href="logout" target="parent" class="slogan">操作：退出</a>
							</div></td>
					</tr>
				</table>
				<!--userinfo-->

			</div>
			<!--right-->
		</div>
		<!--topheader-->


		<div class="header">
			<ul class="headermenu">
				<li class="current"><a href="userHome"><span
						class="icon icon-flatscreen"></span>人力资源</a></li>
				<li><a href="waterManage?id=1"><span
						class="icon icon-pencil"></span>水电管理</a></li>
				<li><a href="Transaction"><span class="icon icon-message"></span>我的事务</a></li>
				<li><a href="Finance"><span class="icon icon-chart"></span>财务管理</a></li>
				<li><a href="reports"><span class="icon icon-chart"></span>统计报表</a></li>
			</ul>

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
				<li><a href="#formsub1" class="widgets">招聘和配置</a>
					<span class="arrow"></span>
					<ul id="formsub1">
						<li><a href="Test_01">招聘申请</a></li>
						<li class="current"><a href="Recritment?id=0">招聘和配置信息</a></li>
					</ul>
				</li>
				<li><a href="#formsub2" class="calendar">考勤管理</a>
					<span class="arrow"></span>
					<ul id="formsub2">
						<li><a href="table_assessment">出差申请</a></li>
						<li class="current"><a href="Assessment?id=1">考勤信息</a></li>
					</ul>
				</li>
				<li><a href="#formsub3" class="support">福利和关怀</a>
					<span class="arrow"></span>
					<ul id="formsub3">
						<li><a href="table_welfare">劳动合同登记</a></li>
						<li class="current"><a href="Welfare?id=1">福利和关怀信息</a></li>
					</ul>
				</li>
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
			<a class="togglemenu"></a> <br />
			<br />
		</div>
		<!--leftmenu-->

		<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">在职员工</h1>
				<span class="pagedesc">公司各部门员工</span>
				<ul class="hornav">
					<li class="current"><a href="#basicform">信息表</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="basicform" class="subcontent">

					<div class="contenttitle2">
						<h3>欢迎ing</h3>
					</div>
					<!--contenttitle-->
					<!-- 设置CELLPADDING (内文字与边框间距) 
                                                      设置CELLSPACING （表格单元格间距） -->
					<table cellpadding="0" cellspacing="0" border="0" class="stdtable">
						<thead>
							<tr>
								<th>序号</th>
								<th>姓名</th>
								<th>性别</th>
								<th>电子邮箱</th>
								<th>地址</th>
								<th>详细介绍</th>
								<th>所属部门</th>
								<th>角色</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>

							<s:iterator value="#request.userList" id="user">
								<tr>
									<td><s:property value="uid" /></td>
									<td><s:property value="name" /></td>
									<td><s:property value="gender" /></td>
									<td><s:property value="email" /></td>
									<td><s:property value="position" /></td>
									<td><s:property value="description" /></td>
									<td><s:property value="department" /></td>
									<td><s:property value="yes_or_no" /></td>
									<td><a href="userById?id=<s:property value='%{uid}'/>">修改</a>
									</td>
								</tr>
							</s:iterator>

						</tbody>
					</table>
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