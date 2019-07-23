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
        	<li class="current"><a href="#formsub" class="editor">员工管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li class="current"><a href="addUser">添加用户</a></li>
                    <li><a href="">编辑用户</a></li>
                    <li><a href="userList">查询用户</a></li>
                </ul>
            </li>
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
                        <h3>添加用户</h3>
                    </div><!--contenttitle-->

                    <form class="stdform" action="addUser" method="post">
                        <p>
                        	<label>姓名</label>
                            <span class="field"><input type="text" name="user.name" class="smallinput" /></span>
                            <small class="desc">真实姓名（非用户名）.</small>
                        </p>
                        
                        <p>
                        	<label>性别</label>
                        	<span class="field"><input type="text" name="user.gender" class="smallinput" /></span>
                        </p>
                        
                        <p>
                        	<label>电子邮箱</label>
                        	<span class="field"><input type="text" name="user.email" class="smallinput" /></span>
                        </p>
                        
                        <p>
                        	<label>地址</label>
                            <span class="field"><input type="text" name="user.position" class="mediuminput" /></span>
                        </p>
                        
                        <p>
                        	<label>员工描述</label>
                            <span class="field">
                                <textarea cols="80" rows="5" id="textarea2" name="user.description" class="longinput"></textarea>
                            </span> 
                        </p>
                        
                        <p>
                        	<label>所属部门</label>
                            <span class="field">
                            <select name="user.department" class="uniformselect">
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
                            	<input type="radio" name="user.yes_or_no" value="普通用户"/> 普通用户 &nbsp; &nbsp;
                            	<input type="radio" name="user.yes_or_no" value="管理员" checked="checked" /> 管理员 &nbsp; &nbsp;
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
            
            <!-- <div id="validation" class="subcontent" style="display: none">
            	
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

            </div>subcontent -->
 
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>