<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%String id = request.getParameter("taskid");
  String name = request.getParameter("name");%>
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
<title>办理业务</title>
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
				<li class="current"><a href="myWait" class="drafts">待处理的事务</a></li>
				<li><a href="" class="sent">已处理的事务</a></li>
				<li><a href="" class="trash">我发起的事务</a></li>
			</ul>
			<a class="togglemenu"></a> <br /> <br />
		</div>
		<!--leftmenu-->

		<div class="centercontent">
			<!--pageheader-->
			<div class="pageheader">
				<h1 class="pagetitle">审批业务的办理</h1>
				<span class="pagedesc">The content below are loaded using
					ajax</span>

				<ul class="hornav blogmenu">
					<li class="current"><a href="allposts.html">欢迎ING</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">
				<div id="basicform" class="subcontent">
				
					<!--contenttitle-->
					<!-- 设置CELLPADDING (内文字与边框间距) 
                                                      设置CELLSPACING （表格单元格间距） -->                    
                          <c:if test="${atask ne null }">
                               <p>
                        			<label>天数:</label>
                        			<span class="field">
                        			<input type="text" name="assessment_time" value="${atask.assessment_time }" class="smallinput" />
                        			</span>
                        		</p>
                        		<p>
                        			<label>原因:</label>
                        			<span class="field">
                        			<input type="text" name="assessment_table" value="${atask.assessment_table }" class="smallinput" />
                        			</span>
                        		</p>
                        		<p>
                        			<label>备注:</label>
                        			<span class="field">
                        			<input type="text" name="assessment_way" value="${atask.assessment_way }" class="smallinput" />
                        			</span>
                        		</p>
						<form action="addReview?taskid=<%=id%>&name=<%=name%>" method="post">
								<input type="hidden" name="review.ids" value="<%=id%>"/>
								<input type="hidden" name="review.name" value="<%=name%>"/>
								<input type="hidden" name="review.yaoqiu" value="${atask.assessment_way }"/>
								<input type="hidden" name="review.type_id" value="${atask.assessment_id }"/>
								 批注:<textarea name="review.message" cols="50" rows="3"></textarea>
								<br />
								<!-- 使用连线的名称作为按钮 -->
								<input type="submit" name="outcome" value="提交" class="button_ok" />
								<input type="submit" name="outcome" value="返回" class="button_ok" />
						</form>
                                           </c:if>   
                           <c:if test="${rtask ne null }">
                                            <p>
                        			<label>天数:</label>
                        			<span class="field">
                        			<input type="text" name="assessment_time" value="${rtask.recritment_time }" class="smallinput" />
                        			</span>
                        		</p>
                        		<p>
                        			<label>原因:</label>
                        			<span class="field">
                        			<input type="text" name="assessment_table" value="${rtask.recritment_yaoqiu }" class="smallinput" />
                        			</span>
                        		</p>
                        		<p>
                        			<label>备注:</label>
                        			<span class="field">
                        			<input type="text" name="assessment_way" value="${rtask.recritment_shuoming }" class="smallinput" />
                        			</span>
                        		</p>
						<form action="addReview?taskid=<%=id%>&name=<%=name%>" method="post">
								<input type="hidden" name="review.ids" value="<%=id%>"/>
								<input type="hidden" name="review.name" value="<%=name%>"/>
								<input type="hidden" name="review.yaoqiu" value="${rtask.recritment_yaoqiu }"/>
								<input type="hidden" name="review.type_id" value="${rtask.recritment_id }"/>
								 批注:<textarea name="review.message" cols="50" rows="3"></textarea>
								<br />
								<!-- 使用连线的名称作为按钮 -->
								<input type="submit" name="outcome" value="提交" class="button_ok" />
								<input type="submit" name="outcome" value="返回" class="button_ok" />
						</form>
                                           </c:if>     
                                           
								
<br />	
				</div>
			</div>
			<!--contentwrapper-->
			<!--contentwrapper-->
			<div id="basicform" class="subcontent">
					<div class="contenttitle2">
                        <h3>历史批注信息</h3>
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
										<th>名称</th>
										<th>批注人</th>
										<th>批注信息</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="#reviewList">
										<tr>
											<td><img src="images/priority0.gif" border="0">
											<s:property value="yaoqiu" /></td>
											<td><s:property value="name" /></td>
											<td><s:property value="message" /></td>
										</tr>
									</s:iterator>

								</tbody>
							</table>
							
						</div>
					</td> <br />

				</div>
		</div>
		<!--centercontent-->


	</div>
	<!--bodywrapper-->
</body>
</html>