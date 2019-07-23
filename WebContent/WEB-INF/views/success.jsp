<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>成功页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script>
	function rbutton(){
		window.location.href="userList";
	}
</script>
</head>
<body>
	<div class="bodywrapper">
		<div class="topheader orangeborderbottom5">
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
			</div>
			<!--right-->
		</div>
		<!--topheader-->


		<div class="contentwrapper padding10">
			<div class="errorwrapper error404">
				<div class="errorcontent">
					<h1>提交成功</h1>
					<h3>我们已经把数据提交到数据库.</h3>
					<br />
					<button class="stdbtn btn_black" onclick="javascrtpt:rbutton()">
						返回</button>
					&nbsp;
					<button onclick="location.href='userHome'"
						class="stdbtn btn_orange">首页</button>
				</div>
				<!--errorcontent-->
			</div>
			<!--errorwrapper-->
		</div>


	</div>
</body>
</html>