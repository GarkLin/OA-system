<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>我的人事</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/charCount.js"></script>
<script type="text/javascript" src="js/plugins/ui.spinner.min.js"></script>
<script type="text/javascript" src="js/plugins/chosen.jquery.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/forms.js"></script>
<!-- 表格内饰 -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/view.css" rel="stylesheet">
<script src="js/viewCn.js" type="text/javascript"></script>
<script src="js/view.js" type="text/javascript"></script>
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:20px;
	color:#333333;
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
            <h1 class="logo">小区.<span>物业</span></h1>
            <span class="slogan">admin template</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="Enter keyword(s)" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<table border="1">
			<tr>
	                <td><div class="left">
	                <span class="slogan">当前登陆用户：${sessionScope.globle_user.name }</span></div></td>
	                <td><div class="left"><a href="logout" target="parent" class="slogan">操作：退出</a></div></td>
	        </tr>
	     </table>
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	Change theme: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
				<div class="userdata">
                	<h4>Juan Dela Cruz</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                    	<li><a href="editprofile.html">Edit Profile</a></li>
                        <li><a href="accountsettings.html">Account Settings</a></li>
                        <li><a href="help.html">Help</a></li>
                        <li><a href="index.html">Sign Out</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
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
                </div><!--one_half-->
                <div class="one_half last alignright">
                	<h4>Current Rate</h4>
                    <h2>53%</h2>
                </div><!--one_half last-->
            </div><!--earnings-->
        </div><!--headerwidget-->
        
    </div><!--header-->
    
    <div class="vernav2 iconmenu">
    	<ul>
        	<li><a href="#formsub" class="editor">员工管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li ><a href="addUserPage">添加用户</a></li>
                    <li><a href="userUpdate">编辑用户</a></li>
                    <li class="current"><a href="userList">查询用户</a></li>
                </ul>
            </li>
            <!-- <li><a href="filemanager.html" class="gallery">试用员工</a></li> -->
            <li class="current"><a href="myPersonnel" class="elements">我的人事</a></li>
            <li><a href="Recritment?id=0" class="widgets">招聘和配置</a></li>
            <li><a href="Assessment?id=1" class="calendar">考勤管理</a></li>
            <li><a href="Welfare?id=1" class="support">福利和关怀</a></li>
            <!-- <li><a href="typography.html" class="typo">文字排版</a></li>
            <li><a href="tables.html" class="tables">数据表格</a></li>
			<li><a href="buttons.html" class="buttons">按钮 &amp; 图标</a></li> -->
            <li><a href="#error" class="error">错误页面</a>
            	<span class="arrow"></span>
            	<ul id="error">
               		<li><a href="notfound.html">404错误页面</a></li>
                    <li><a href="forbidden.html">403错误页面</a></li>
                    <li><a href="internal.html">500错误页面</a></li>
                    <li><a href="offline.html">503错误页面</a></li>
                </ul>
            </li>
            <li><a href="#addons" class="addons">其他页面</a>
            	<span class="arrow"></span>
            	<ul id="addons">
               		<li><a href="newsfeed.html">新闻订阅</a></li>
                    <li><a href="profile.html">资料页面</a></li>
                    <li><a href="productlist.html">产品列表</a></li>
                    <li><a href="photo.html">图片视频分享</a></li>
                    <li><a href="gallery.html">相册</a></li>
                    <li><a href="invoice.html">购物车</a></li>
                </ul>
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle" >我的人事</h1>
            
            <span class="pagedesc">公司各部门员工</span>
            
            <ul class="hornav">
                <li class="current"><a href="#basicform">信息表</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        	
        	<div id="basicform" class="subcontent">
                                
                    <div class="contenttitle2">
                        <h3>欢迎ing</h3>
                    </div><!--contenttitle-->
					<!-- 设置CELLPADDING (内文字与边框间距) 
                                                      设置CELLSPACING （表格单元格间距） -->
                    <table class="tableForm" style="table-layout: fixed;" border="0" cellspacing="0" cellpadding="0" summary=""><colgroup><col width="100"><col><col width="100"><col>
        					<tbody>
        <tr>
            <td class="fieldLable">从属于</td>
            <td>销售部&nbsp;</td>
            <td class="fieldLable">在职状态</td>
            <td>在职</td>
        </tr>
        <tr>
            <td class="fieldLable">姓名</td>
            <td>李萌</td>
            <td class="fieldLable">工号</td>
            <td>Azb-050&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">性别</td>
            <td>女</td>
            <td class="fieldLable">上级主管</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">固定电话</td>
            <td>025-84858968&nbsp;</td>
            <td class="fieldLable">移动电话</td>
            <td>13900221452&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">电子邮件</td>
            <td>limeng123@139.com&nbsp;</td>
            <td class="fieldLable">即时通信</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">职务</td>
            <td>销售经理&nbsp;</td>
            <td class="fieldLable">职务级别</td>
            <td>0&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">出生日期</td>
            <td>1990/9/12&nbsp;</td>
            <td class="fieldLable">入职日期</td>
            <td>2015/5/7&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">转正日期</td>
            <td>2015/8/7&nbsp;</td>
            <td class="fieldLable">离职日期</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">职责说明</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">附加描述</td>
            <td colspan="3">销售部经理&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">简历和证书</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">籍贯</td>
            <td>信阳&nbsp;</td>
            <td class="fieldLable">民族</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">政治面貌</td>
            <td>党员&nbsp;</td>
            <td class="fieldLable">婚姻状况</td>
            <td>未婚</td>
        </tr>
        <tr>
            <td class="fieldLable">身份证号</td>
            <td>450829199009120323&nbsp;</td>
            <td class="fieldLable">户口所在地</td>
            <td>北京&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">联系地址</td>
            <td colspan="3">北京市通州区凤凰熙岸04栋3204&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">毕业院校</td>
            <td>郑州大学&nbsp;</td>
            <td class="fieldLable">最高学历</td>
            <td>本科&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">专业方向</td>
            <td>信息工程专业&nbsp;</td>
            <td class="fieldLable">学历证明人</td>
            <td>刘博&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">爱好特长</td>
            <td colspan="3">旅游&nbsp;</td>
        </tr>
        <tr>
            <td class="fieldLable">状态</td>
            <td><input disabled="" type="checkbox" checked="">有效（能够登录本系统，登录时的用户名默认为姓名）</td>
            <td class="fieldLable">指定用户名</td>
            <td>&nbsp;</td>
        </tr>
    </tbody>
    </table>
                    
                    <br />

            </div><!--subcontent-->
            
            
 
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->
                    
                   

</body>
</html>