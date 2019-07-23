<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>员工管理</title>
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
            <h1 class="logo">Aman.<span>da</span></h1>
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
        	<div class="notification">
                <a class="count" href="ajax/notifications.html"><span>9</span></a>
        	</div>
            <div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>Juan Dela Cruz</span>
            </div><!--userinfo-->
            
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
        	<li class="current"><a href="dashboard.html"><span class="icon icon-flatscreen"></span>员工管理</a></li>
            <li><a href="manageblog.html"><span class="icon icon-pencil"></span>水电管理</a></li>
            <li><a href="messages.html"><span class="icon icon-message"></span>我的事务</a></li>
            <li><a href="reports.html"><span class="icon icon-chart"></span>财务管理</a></li>
            <li><a href="reports.html"><span class="icon icon-chart"></span>统计报表</a></li>
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
        	<li class="current"><a href="#formsub" class="editor">在职用户</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="forms.html">添加员工</a></li>
                    <li class="current"><a href="wizard.html">编辑员工</a></li>
                    <li><a href="userList.do">查询员工</a></li>
                </ul>
            </li>
            <!-- <li><a href="filemanager.html" class="gallery">试用员工</a></li> -->
            <li><a href="elements.html" class="elements">试用员工</a></li>
            <li><a href="widgets.html" class="widgets">申请考核</a></li>
            <li><a href="calendar.html" class="calendar">我的考核</a></li>
            <li><a href="support.html" class="support">客户支持</a></li>
            <li><a href="typography.html" class="typo">文字排版</a></li>
            <li><a href="tables.html" class="tables">数据表格</a></li>
			<li><a href="buttons.html" class="buttons">按钮 &amp; 图标</a></li>
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
            <h1 class="pagetitle">在职员工</h1>
            <span class="pagedesc">按照提供表格填写内容</span>
            
            <ul class="hornav">
                <li class="current"><a href="#basicform">基本表</a></li>
                <li><a href="#validation">验证</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        	
        	<div id="basicform" class="subcontent">
                                
                    <div class="contenttitle2">
                        <h3>编辑员工</h3>
                    </div><!--contenttitle-->

                    <form class="stdform" action="${pageContext.request.contextPath}/updateUser.do" method="post">
                    
                    	<!-- <p>
                    		<label>用户名</label>
                    		<span class="field"><input type="text" name="id" class="smallinput" /></span>
                    	</p> -->
                    	
                        <p>
                        	<label>姓名</label>
                            <span class="field"><input type="text" name="name" class="smallinput" value="${user.name}"/></span>
                            <small class="desc">真实姓名（非用户名）.</small>
                        </p>
                        
                        <p>
                        	<label>性别</label>
                        	<span class="field"><input type="text" name="gender" class="smallinput" value="${user.gender}"/></span>
                        </p>
                        
                        <p>
                        	<label>电子邮箱</label>
                        	<span class="field"><input type="text" name="email" class="smallinput" value="${user.email}"/></span>
                        </p>
                        
                        <p>
                        	<label>地址</label>
                            <span class="field"><input type="text" name="position" class="mediuminput" value="${user.position}"/></span>
                        </p>
                        
                        <p>
                        	<label>员工描述</label>
                            <span class="field">
                                <textarea cols="80" rows="5" id="textarea2" name="description" class="longinput" value="${user.description}"></textarea>
                            </span> 
                        </p>
                        
                        <p>
                        	<label>所属部门</label>
                            <span class="field">
                            <select name="department" class="uniformselect">
                            	<option value="高级技术部">高级技术部</option>
                                <option value="行政人事部">行政人事部</option>
                                <option value="客服部">客服部</option>
                                <option value="秩序维护部">秩序维护部</option>
                                <option value="环境管理部">环境管理部</option>
                            </select>
                            
                            </span>
                        </p>
                       
                        <p>
                        	<label>权限分配</label>
                            <span class="formwrapper">
                            	<input type="radio" name="yes_or_no" value="普通用户"/> 普通用户 &nbsp; &nbsp;
                            	<input type="radio" name="yes_or_no" value="管理员" checked="checked" /> 管理员 &nbsp; &nbsp;
                                </span>
                        </p>
                       
                        <br clear="all" /><br />
                        
                        <p class="stdformbutton">
                        	<button class="submit radius2">input</button>
                            <input type="reset" class="reset radius2" value="Reset" />
                        </p>
                        
                        
                    </form>
                    
                    <br />

            </div><!--subcontent-->
            
            <div id="validation" class="subcontent" style="display: none">
            	
                    <form id="form1" class="stdform" method="post" action="">
                    	<p>
                        	<label>姓名</label>
                            <span class="field"><input type="text" name="firstname" id="firstname" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>电话</label>
                            <span class="field"><input type="text" name="lastname" id="lastname" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>Email</label>
                            <span class="field"><input type="text" name="email" id="email" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>Location</label>
                            <span class="field"><textarea cols="80" rows="5" name="location" class="mediuminput" id="location"></textarea></span> 
                        </p>
                        <br />
                        
                        <p class="stdformbutton">
                        	<button class="submit radius2">Submit Button</button>
                        </p>
                    </form>

            </div><!--subcontent-->
 
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>