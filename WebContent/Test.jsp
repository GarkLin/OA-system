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
								<table border="0" cellspacing="0"
									cellpadding="0">
									<tbody>
										<tr>
											<td><h1>
													<img style="cursor: pointer;"
														onclick="var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';"
														src="../images/menu.png"> 新建流程事务
												</h1></td>
											<td class="textGray">* 请选择相应的流程（这些流程是通过“业务流程设置”模块而创建的）</td>
										</tr>
									</tbody>
								</table>
							<br>
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
										<tr indent="0" sid="750000" psid="0">
											<td style="padding-left: 10px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',0);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/bulletin.png" border="0"> 财务中心</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="1" sid="753000"
											psid="750000">
											<td style="padding-left: 25px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',1);void(0);"><img
													src="../images/minus.gif" border="0"><img
													src="../images/catalogue1.png" border="0"> 财务审批</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="2" sid="753110"
											psid="753000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('差旅费报销',753110);"><img
													src="../images/flow.gif" border="0"> 差旅费报销</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?753110');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="753150"
											psid="753000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('费用报销',753150);"><img
													src="../images/flow.gif" border="0"> 费用报销</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?753150');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="753160"
											psid="753000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('支出申请',753160);"><img
													src="../images/flow.gif" border="0"> 支出申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?753160');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="753180"
											psid="753000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('付款申请',753180);"><img
													src="../images/flow.gif" border="0"> 付款申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?753180');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="753310"
											psid="753000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('开票申请',753310);"><img
													src="../images/flow.gif" border="0"> 开票申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?753310');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="753330"
											psid="753000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('来票登记',753330);"><img
													src="../images/flow.gif" border="0"> 来票登记</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?753330');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="753510"
											psid="753000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('预借款申请',753510);"><img
													src="../images/flow.gif" border="0"> 预借款申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?753510');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="753520"
											psid="753000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('资金调拨申请',753520);"><img
													src="../images/flow.gif" border="0"> 资金调拨申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?753520');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr indent="0" sid="330000" psid="0">
											<td style="padding-left: 10px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',10);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/resource.png" border="0"> 进销存管理</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="1" sid="331700"
											psid="330000">
											<td style="padding-left: 25px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',11);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/catalogue1.png" border="0"> 采购管理</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="2" sid="331710"
											psid="331700">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('采购订单',331710);"><img
													src="../images/flow.gif" border="0"> 采购订单</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?331710');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="1" sid="331800"
											psid="330000">
											<td style="padding-left: 25px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',13);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/catalogue1.png" border="0"> 库存管理</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="2" sid="331810"
											psid="331800">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('入库单',331810);"><img
													src="../images/flow.gif" border="0"> 入库单</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?331810');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="331820"
											psid="331800">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('出库单',331820);"><img
													src="../images/flow.gif" border="0"> 出库单</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?331820');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="1" sid="331600"
											psid="330000">
											<td style="padding-left: 25px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',16);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/catalogue1.png" border="0"> 销售管理</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="2" sid="331610"
											psid="331600">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('销售订单',331610);"><img
													src="../images/flow.gif" border="0"> 销售订单</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?331610');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr indent="0" sid="300000" psid="0">
											<td style="padding-left: 10px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',18);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/folder3.png" border="0"> 客户关系</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="1" sid="300600"
											psid="300000">
											<td style="padding-left: 25px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',19);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/catalogue1.png" border="0"> 合同管理</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="2" sid="300610"
											psid="300600">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('新增合同',300610);"><img
													src="../images/flow.gif" border="0"> 新增合同</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?300610');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="1" sid="300300"
											psid="300000">
											<td style="padding-left: 25px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',21);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/catalogue1.png" border="0"> 商机管理</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="2" sid="300310"
											psid="300300">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('新增商机',300310);"><img
													src="../images/flow.gif" border="0"> 新增商机</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?300310');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="1" sid="300800"
											psid="300000">
											<td style="padding-left: 25px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',23);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/catalogue1.png" border="0"> 售后服务</a></td>
											<td>&nbsp;</td>
											<td>12</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="2" sid="300810"
											psid="300800">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('售后服务',300810);"><img
													src="../images/flow.gif" border="0"> 售后服务</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?300810');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr indent="0" sid="130000" psid="0">
											<td style="padding-left: 10px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',25);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/schedule.png" border="0"> 目标管理</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="1" sid="133010"
											psid="130000">
											<td style="padding-left: 25px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('新增工作任务',133010);"><img
													src="../images/flow.gif" border="0"> 新增工作任务</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?133010');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="1" sid="132010"
											psid="130000">
											<td style="padding-left: 25px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('制定工作计划',132010);"><img
													src="../images/flow.gif" border="0"> 制定工作计划</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?132010');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="1" sid="134010"
											psid="130000">
											<td style="padding-left: 25px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('撰写工作报告',134010);"><img
													src="../images/flow.gif" border="0"> 撰写工作报告</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?134010');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr indent="0" sid="700000" psid="0">
											<td style="padding-left: 10px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',29);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/persons.png" border="0"> 人力资源</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="1" sid="703000"
											psid="700000">
											<td style="padding-left: 25px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',30);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/catalogue1.png" border="0"> 人事审批</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="2" sid="703110"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('招聘申请',703110);"><img
													src="../images/flow.gif" border="0"> 招聘申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703110');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703120"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('入职申请',703120);"><img
													src="../images/flow.gif" border="0"> 入职申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703120');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703150"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('转正申请',703150);"><img
													src="../images/flow.gif" border="0"> 转正申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703150');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703170"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('岗位调动申请',703170);"><img
													src="../images/flow.gif" border="0"> 岗位调动申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703170');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703190"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('离职申请',703190);"><img
													src="../images/flow.gif" border="0"> 离职申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703190');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703210"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('出差申请',703210);"><img
													src="../images/flow.gif" border="0"> 出差申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703210');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703220"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('外出申请',703220);"><img
													src="../images/flow.gif" border="0"> 外出申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703220');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703230"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('加班申请',703230);"><img
													src="../images/flow.gif" border="0"> 加班申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703230');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703240"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('请休假申请',703240);"><img
													src="../images/flow.gif" border="0"> 请休假申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703240');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703250"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('调休申请',703250);"><img
													src="../images/flow.gif" border="0"> 调休申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703250');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703510"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('劳动合同登记',703510);"><img
													src="../images/flow.gif" border="0"> 劳动合同登记</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703510');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703520"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('员工培训安排',703520);"><img
													src="../images/flow.gif" border="0"> 员工培训安排</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703520');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703540"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('员工生日关怀',703540);"><img
													src="../images/flow.gif" border="0"> 员工生日关怀</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703540');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703550"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('员工专项福利',703550);"><img
													src="../images/flow.gif" border="0"> 员工专项福利</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703550');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703650"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('月度绩效考核单',703650);"><img
													src="../images/flow.gif" border="0"> 月度绩效考核单</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703650');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703660"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('季度绩效考核单',703660);"><img
													src="../images/flow.gif" border="0"> 季度绩效考核单</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703660');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703670"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('年度绩效考核单',703670);"><img
													src="../images/flow.gif" border="0"> 年度绩效考核单</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703670');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr style="display: none;" indent="2" sid="703690"
											psid="703000">
											<td style="padding-left: 40px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('奖励和处罚申请',703690);"><img
													src="../images/flow.gif" border="0"> 奖励和处罚申请</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?703690');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										<tr indent="0" sid="400000" psid="0">
											<td style="padding-left: 10px;"><a
												href="javascript:treeDisplay0ByTable('treeOfNavigation',49);void(0);"><img
													src="../images/plus.gif" border="0"><img
													src="../images/folder2.png" border="0"> 项目管理</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td>&nbsp;</td>
										</tr>
										<tr style="display: none;" indent="1" sid="400110"
											psid="400000">
											<td style="padding-left: 25px;"><span><img
													src="../images/blank16.gif" border="0"></span><a
												href="javaScript:workflow('新增项目',400110);"><img
													src="../images/flow.gif" border="0"> 新增项目</a></td>
											<td>&nbsp;</td>
											<td>10</td>
											<td><a
												href="javascript:windowOpen('../flow/view1.htm?400110');"><img
													src="../images/flowChart.gif" border="0"></a></td>
										</tr>
										
										
									</tbody>
								</table> &nbsp;<script language="javaScript">treeBuildByTable("treeOfNavigation");</script></td>
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