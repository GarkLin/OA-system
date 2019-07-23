<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<script type="text/javascript" src="js/custom/messages.js"></script>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/view.css" rel="stylesheet">
<script src="js/viewCn.js" type="text/javascript"></script>
<script src="js/view.js" type="text/javascript"></script>
<script src="js/utility.js" type="text/javascript"></script>
<script src="js/ckeditor.js" type="text/javascript"></script>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
	$(
			function() {
				$("tr.parent").click(
						function() {
							$(this).toggleClass('selected').siblings(
									'.child_' + this.id).toggle();
						})
			})
</script>
<title>我的事务</title>
</head>
<body class="withvernav">
	<div class="bodywrapper">
		<div class="topheader">
			<div class="left">
				<h1 class="logo">
					Ama.<span>Admin</span>
				</h1>
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
				<!--<div class="notification">
                <a class="count" href="notifications.html"><span>9</span></a>
        	</div>
			-->
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
				<li><a href="dashboard.html"><span
						class="icon icon-flatscreen"></span>人力资源</a></li>
				<li><a href="waterManage"><span class="icon icon-pencil"></span>水电管理</a></li>
				<li class="current"><a href="Transaction"><span
						class="icon icon-message"></span>我的事务</a></li>
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

		<div class="vernav iconmenu">
			<ul>
				<li class="current"><a href="manageblog.html" class="inbox">新建流程事务</a></li>
				<li><a href="newpost.html" class="drafts">待处理的事务</a></li>
				<li><a href="" class="sent">已处理的事务</a></li>
				<li><a href="" class="trash">我发起的事务</a></li>
			</ul>
			<a class="togglemenu"></a> <br /> <br />
		</div>
		<!--leftmenu-->

		<div class="centercontent">
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">
				<table style="width: 100%; height: 100%; min-width: 980px;"
					border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr valign="top">
							<td id="colloaContent">
								<table border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td><h1>
													<img style="cursor: pointer;"
														onclick="var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';"
														src="images/menu.png"> 新建流程事务
												</h1></td>
											<td class="textGray">* 请选择相应的流程（这些流程是通过“业务流程设置”模块而创建的）</td>
										</tr>
									</tbody>
								</table> <br>
								<table class="tableList" border="0" cellspacing="0"
									cellpadding="0">
									<thead>
										<tr>
											<th style="padding-left: 5px;">名称</th>
											<th>描述</th>
											<th>排序号</th>
											<th>流程图</th>
										</tr>
									</thead>
									<tbody id="treeOfNavigation">
										<tr class="parent" id="row_01">
											<td style="padding-left: 10px;" colspan="4"><img
												src="images/plus.gif" border="0"> <img
												src="images/bulletin.png" border="0"> 财务中心</td>
										</tr>
										<tr class="child_row_01">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 差旅费报销
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="child_row_01">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 预借款申请
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="child_row_01">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 支出申请
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="child_row_01">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 收入申请
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="parent" id="row_02">
											<td style="padding-left: 10px;" colspan="4"><img
												src="images/plus.gif" border="0"> <img
												src="images/bulletin.png" border="0"> 水电中心</td>
										</tr>
										<tr class="child_row_02">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 水费登记
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="child_row_02">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 电费登记
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="parent" id="row_03">
											<td style="padding-left: 10px;" colspan="4"><img
												src="images/plus.gif" border="0"> <img
												src="images/bulletin.png" border="0"> 人力资源</td>
										</tr>
										<tr class="child_row_03">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 员工录入
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="child_row_03">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 招聘申请
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="child_row_03">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 出差申请
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="child_row_03">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 劳动合同申请
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										<tr class="parent" id="row_04">
											<td style="padding-left: 10px;" colspan="4"><img
												src="images/plus.gif" border="0"> <img
												src="images/bulletin.png" border="0"> 统计报表</td>
										</tr>
										<tr class="child_row_04">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> 开票申请
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
										
										<tr class="parent" id="row_05">
											<td style="padding-left: 10px;" colspan="4"><img
												src="images/plus.gif" border="0"> <img
												src="images/bulletin.png" border="0"> 备用</td>
										</tr>
										<tr class="child_row_05">
											<td style="padding-left: 25px;"><span><img
													src="images/blank16.gif" border="0"></span> <a href="">
													<img src="images/flow.gif" border="0"> ..
											</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a href=""> <img src="images/flowChart.gif"
													border="0"></a></td>
										</tr>
									</tbody>
								</table> &nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!--contentwrapper-->

		</div>
		<!--centercontent-->


	</div>
	<!--bodywrapper-->
</body>
</html>