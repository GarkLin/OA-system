<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/blog.js"></script>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/view.css" rel="stylesheet">
<script src="js/viewCn.js" type="text/javascript"></script>
<script src="js/view.js" type="text/javascript"></script>
<title>收入管理</title>
</head>
<body>
	<div class="bodywrapper">
		<div class="topheader">
			<div class="left">
				<h1 class="logo">小区.<span>物业</span></h1>
				<span class="slogan">后台管理系统</span>

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
				<li><a href="userHome"><span
						class="icon icon-flatscreen"></span>人力资源</a></li>
				<li><a href="waterManage"><span class="icon icon-pencil"></span>水电管理</a></li>
				<li><a href="Transaction"><span class="icon icon-message"></span>我的事务</a></li>
				<li class="current"><a href="Finance"><span
						class="icon icon-chart"></span>财务管理</a></li>
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

		<div class="vernav">
		<ul>
        	<li><a href="Finance" class="editor">费用管理</a></li>
            <li><a href="Finance_P2">资金管理</a></li>
            <li class="current"><a href="">收入管理</a></li>
            <li><a href="">支出管理</a></li>
        </ul>
			<a class="togglemenu"></a>
		</div>
		<!--leftmenu-->

		<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">收入管理</h1>
				<span class="pagedesc">The content below are loaded using
					ajax</span>

				<ul class="hornav blogmenu">
					<li class="current"><a href="allposts.html">欢迎ING</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">
				<td id="colloaContent"><table border="0" cellspacing="0"
						cellpadding="0">
						<tbody>
							<tr>
								<td><h1>
										<img style="cursor: pointer;"
											onclick="var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';"
											src="images/menu.png"> 支出管理
									</h1></td>
								<td><img src="../images/coins.gif"> 累计支出 <span
									class="textBig" style="color: rgb(204, 0, 0);">3031185.10</span></td>
								<td align="right" id="oWorkflowList"><span
									id="oWorkflowList1"><a class="button1 button1M"
										href="Finance_table3"><i
											class="fa fa-plus"></i> 收入登记</a></span>
								</td>
							</tr>
						</tbody>
					</table> <br>

					<table class="tableList" border="0" cellspacing="0" cellpadding="0">
						<thead>
							<tr>
								<th>支付日期</th>
								<th style="text-align: right;">支付金额</th>
								<th>支出分类</th>
								<th>申请人</th>
								<th>所属部门</th>
								<th>对方单位</th>
								<th>来源</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="#request.flist" id="water">
            							<tr>
                								<td><img src="images/time.gif"
												border="0"><s:property value="pay_date"/></td>
                								<td style="text-align: right; color: rgb(204, 0, 0);"><s:property value="pay_money"/></td>
                								<td><s:property value="type"/></td>
                								<td><s:property value="water_user"/>&nbsp;</td>
               									<td><s:property value="department"/></td>
               									<td><s:property value="department_is"/></td>
               									<td><s:property value="source"/></td>
            							</tr>
        						</s:iterator>
						</tbody>
					</table></td>
			</div>
			<!--contentwrapper-->



		</div>
		<!--bodywrapper-->
</body>
</html>