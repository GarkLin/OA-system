<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
	$(function() {
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
				<li><a href="userHome"><span class="icon icon-flatscreen"></span>人力资源</a></li>
				<li><a href="waterManage"><span class="icon icon-pencil"></span>水电管理</a></li>
				<li class="current"><a href="Transaction"><span
						class="icon icon-message"></span>我的事务</a></li>
				<li><a href="Finance"><span class="icon icon-chart"></span>财务管理</a></li>
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
				<li><a href="manageblog.html" class="inbox">新建流程事务</a></li>
				<li><a href="myWait" class="drafts">待处理的事务</a></li>
				<li class="current"><a href="myList" class="trash">部署的事务</a></li>
				<li><a href="listTask" class="trash">任务列表</a></li>
			</ul>
			<a class="togglemenu"></a> <br /> <br />
		</div>
		<!--leftmenu-->

		<div class="centercontent">
			<!--pageheader-->
			<div class="pageheader">
				<h1 class="pagetitle">发起的事务</h1>
				<span class="pagedesc">The content below are loaded using
					ajax</span>

				<ul class="hornav blogmenu">
					<li class="current"><a href="allposts.html">欢迎ING</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">
				<div id="basicform" class="subcontent">
					<div class="contenttitle2">
                        <h3>部署信息列表</h3>
                    </div>
					<!--contenttitle-->
					<!-- 设置CELLPADDING (内文字与边框间距) 
                                                      设置CELLSPACING （表格单元格间距） -->
					<td id="colloaContent">
						<div id="myshiwu">
							<table class="tableList" border="0" cellspacing="0"
								cellpadding="0">
								<thead>
									<tr>
										<th>ID</th>
										<th>流程名称</th>
										<th>创建时间</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>

									<s:iterator value="#dList">
										<tr>
											<td><img src="images/priority0.gif" border="0">
											<s:property value="id" /></td>
											<td><s:property value="name" /></td>
											<td><s:date name="deploymentTime" format="yyyy-MM-dd HH:mm:ss"/></td>
											<td><a href="delDeployment?deploymentId=<s:property value="id"/>">删除</a></td>
										</tr>
									</s:iterator>

								</tbody>
							</table>
							
						</div>
					</td> <br />

				</div>
				<div id="basicform" class="subcontent">
					<div class="contenttitle2">
                        <h3>流程定义信息列表</h3>
                    </div>
					<!--contenttitle-->
					<!-- 设置CELLPADDING (内文字与边框间距) 
                                                      设置CELLSPACING （表格单元格间距） -->
					<td id="colloaContent">
						<div id="myshiwu">
							<table class="tableList" border="0" cellspacing="0"
								cellpadding="0">
								<thead>
									<tr>
										<th>ID</th>
										<th>名称</th>
										<th>流程定义的KEY</th>
										<th>流程版本</th>
										<th>流程定义的规则文件名称</th>
										<th>流程定义的规则图片名称</th>
										<th>部署ID</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="#pList">
										<tr>
											<td><img src="images/priority0.gif" border="0">
											<s:property value="id" /></td>
											<td><s:property value="name" /></td>
											<td><s:property value="key" /></td>
											<td><s:property value="version" /></td>
											<td><s:property value="resourceName" /></td>
											<td><s:property value="diagramResourceName" /></td>
											<td><s:property value="deploymentId" /></td>
											<td><a href="viewImage?deploymentId=<s:property value="deploymentId"/>&imageName=<s:property value="diagramResourceName"/>">查看流程图</a></td>
										</tr>
									</s:iterator>

								</tbody>
							</table>
							
						</div>
					</td> <br />

				</div>
				
				<div id="basicform" class="subcontent">
					<div class="contenttitle2">
                        <h3>自定义部署流程</h3>
                    </div>
					<!--contenttitle-->
					<!-- 设置CELLPADDING (内文字与边框间距) 
                                                      设置CELLSPACING （表格单元格间距） -->
					<s:form action="newdeploy" enctype="multipart/form-data" method="POST">
								<table width="100%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td>
											<div align="left" class="STYLE21">
												流程名称：<input type="text" name="filename"
													style="width: 200px;" /><br /> 流程文件:<input type="file"
													name="file" style="width: 200px;" /><br /> <input
													type="submit" value="上传流程" class="button_ok" />
											</div>
										</td>
									</tr>
								</table>

							</s:form>

				</div>
			</div>
			<!--contentwrapper-->
			<!--contentwrapper-->

		</div>
		<!--centercontent-->


	</div>
	<!--bodywrapper-->
</body>
</html>