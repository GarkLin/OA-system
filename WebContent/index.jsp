<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>OA_home</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.slimscroll.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/dashboard.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/plugins/excanvas.min.js"></script><![endif]-->
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<body class="withvernav">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">Ama.<span>Admin</span></h1>
            <span class="slogan">后台管理系统</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="请输入" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.html"><span>9</span></a>
        	</div>-->
            <div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>管理员</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	切换主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4>Juan</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                    	<li><a href="editprofile.html">编辑资料</a></li>
                        <li><a href="accountsettings.html">账号设置</a></li>
                        <li><a href="help.html">帮助</a></li>
                        <li><a href="index.html">退出</a></li>
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
               		<li><a href="addUserPage">添加员工</a></li>
                    <li><a href="userUpdate">编辑员工</a></li>
                    <li><a href="userList">查询员工</a></li>
                </ul>
            </li>
            <!--<li><a href="filemanager.html" class="gallery">文件管理</a></li>-->
            <li><a href="myPersonnel" class="elements">我的人事</a></li>
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
            <h1 class="pagetitle">控制台</h1>
            <span class="pagedesc">页面的描述内容</span>
            
            <ul class="hornav">
                <li class="current"><a href="#updates">最新更新</a></li>
                <li><a href="#activities">最近活动</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        
        	<div id="updates" class="subcontent">
                    <div class="notibar announcement">
                        <a class="close"></a>
                        <h3>Announcement</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div><!-- notification announcement -->
                    
                    <div class="two_third dashboard_left">
                    
                    	<ul class="shortcuts">
                        	<li><a href="" class="settings"><span>设置</span></a></li>
                            <li><a href="" class="users"><span>用户</span></a></li>
                            <li><a href="" class="gallery"><span>相册</span></a></li>
                            <li><a href="" class="events"><span>事件</span></a></li>
                            <li><a href="" class="analytics"><span>分析</span></a></li>
                        </ul>
                        
                        <br clear="all" />
                    
                        <div class="contenttitle2 nomargintop">
                            <h3>Visit Overview</h3>
                        </div><!--contenttitle-->
                        
                        <div class="overviewhead">
                        	<div class="overviewselect">
                                <select id="overviewselect" name="select">
                                    <option value="">Last 1 hour ago</option>
                                    <option value="">Last 5 hours ago</option>
                                    <option value="">Today</option>
                                    <option value="">Yesterday</option>
                                    <option value="">This Week</option>
                                    <option value="">Last Week</option>
                                    <option value="">This Month</option>
                                    <option value="">Last Month</option>
                                </select>
                            </div><!--floatright-->
                        	From: &nbsp;<input type="text" id="datepickfrom" /> &nbsp; &nbsp; To: &nbsp;<input type="text" id="datepickto" />
                        </div><!--overviewhead-->
                        
                        <br clear="all" />
                        
                        <table cellpadding="0" cellspacing="0" border="0" class="stdtable overviewtable">
                            <colgroup>
                                <col class="con0" width="20%" />
                                <col class="con1" width="20%" />
                                <col class="con0" width="20%" />
                                <col class="con1" width="20%" />
                                <col class="con0" width="20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="head0">Metric</th>
                                    <th class="head1">Rates</th>
                                    <th class="head0">Impressions</th>
                                    <th class="head1">Unique Visits</th>
                                    <th class="head0">Average Time (min)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                    	<div class="progress progress150">
                            				<div class="bar"><div style="width: 60%;" class="value bluebar"></div></div>
                        				</div>
                        			</td>
                                    <td>67.3%</td>
                                    <td>856, 220</td>
                                    <td class="center">32, 012</td>
                                    <td class="center">20.5</td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <br clear="all" />
                        
                        <div id="chartplace" style="height:300px;"></div>
                        
                        <br clear="all" />
                        
                        <table cellpadding="0" cellspacing="0" border="0" class="stdtable stdtablecb overviewtable2">
                            <colgroup>
                                <col class="con0" style="width: 4%" />
                                <col class="con1" />
                                <col class="con0" />
                                <col class="con1" />
                                <col class="con0" />
                                <col class="con1" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="head0"><input type="checkbox" class="checkall" /></th>
                                    <th class="head1">Rendering engine</th>
                                    <th class="head0">Browser</th>
                                    <th class="head1">Platform(s)</th>
                                    <th class="head0">Engine version</th>
                                    <th class="head1">CSS grade</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th class="head0"><input type="checkbox" class="checkall" /></th>
                                    <th class="head1">Rendering engine</th>
                                    <th class="head0">Browser</th>
                                    <th class="head1">Platform(s)</th>
                                    <th class="head0">Engine version</th>
                                    <th class="head1">CSS grade</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <tr>
                                    <td align="center"><input type="checkbox" /></td>
                                    <td>Trident</td>
                                    <td>Internet  Explorer 5.5</td>
                                    <td>Win 95+</td>
                                    <td class="center">5.5</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr>
                                    <td align="center"><input type="checkbox" /></td>
                                    <td>Trident</td>
                                    <td>Internet Explorer 6</td>
                                    <td>Win 98+</td>
                                    <td class="center">6</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr>
                                    <td align="center"><input type="checkbox" /></td>
                                    <td>Trident</td>
                                    <td>Internet Explorer 7</td>
                                    <td>Win XP SP2+</td>
                                    <td class="center">7</td>
                                    <td class="center">A</td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <br />
                        
                        <div class="widgetbox">
                        	<div class="title"><h3>Latest Articles</h3></div>
                            <div class="widgetcontent">
                                <div id="scroll1" class="mousescroll">
                                        <ul class="entrylist">
                                              <li>
                                                <div class="entry_wrap">
                                                    <div class="entry_img"><img src="images/thumbs/image1.png" alt="" /></div>
                                                    <div class="entry_content">
                                                        <h4><a href="">Why Won't My Cat Eat?</a></h4>
                                                        <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                        <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                    </div>
                                                </div>
                                              </li>
                                              <li class="even">
                                                <div class="entry_wrap">
                                                <div class="entry_img"><img src="images/thumbs/image2.png" alt="" /></div>
                                                <div class="entry_content">
                                                    <h4><a href="">We Are About Color</a></h4>
                                                    <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                    <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                </div>
                                                </div>
                                              </li>
                                              <li>
                                                <div class="entry_wrap">
                                                <div class="entry_img"><img src="images/thumbs/image3.png" alt="" /></div>
                                                <div class="entry_content">
                                                    <h4><a href="">Ancient Technology</a></h4>
                                                    <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                    <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                </div>
                                                </div>
                                              </li>
                                              <li class="even">
                                                <div class="entry_wrap">
                                                <div class="entry_img"><img src="images/thumbs/image4.png" alt="" /></div>
                                                <div class="entry_content">
                                                    <h4><a href="">Bird's Nest Soup</a></h4>
                                                    <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                    <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                </div>
                                                </div>
                                              </li>
                                            </ul>                        
                                </div><!--#scroll1-->
                            </div><!--widgetcontent-->
                        </div><!-- widgetbox -->                            
                        
                        
                    </div><!--two_third dashboard_left -->
                    
                    <div class="one_third last dashboard_right">
                    
                        <div class="contenttitle2 nomargintop">
                            <h3>Top Rated Sites</h3>
                        </div><!--contenttitle-->
                    
                    
                    	<ul class="toplist">
                        	<li>
                            	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">loremipsum.com</a></span>
                                        	<span class="desc">Social Network</span>
                                    	</span><!--left-->
                                    </span><!--three_fourth-->
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">8.1</span>
                                        </span><!--right-->
                                    </span><!--one_fourth-->
                                    <br clear="all" />
                                </div>
                            </li>
                        	<li>
                            	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">dolorsitamet.net</a></span>
                                        	<span class="desc">Social Network</span>
                                    	</span><!--left-->
                                    </span><!--three_fourth-->
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">7.8</span>
                                        </span><!--right-->
                                    </span><!--one_fourth-->
                                    <br clear="all" />
                                </div>
                            </li>
                        	<li>
                            	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">consectetur.org</a></span>
                                        	<span class="desc">Social Network</span>
                                    	</span><!--left-->
                                    </span><!--three_fourth-->
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">7.5</span>
                                        </span><!--right-->
                                    </span><!--one_fourth-->
                                    <br clear="all" />
                                </div>
                            </li>
                        </ul>
                        
						<div class="widgetbox">
                            <div class="title"><h3>Newly Registered User</h3></div>
                            <div class="widgetoptions">
                                <div class="right"><a href="">View All Users</a></div>
                                <a href="">Add User</a>
                            </div>
                            <div class="widgetcontent userlistwidget nopadding">
                                <ul>
                                    <li>
                                        <div class="avatar"><img alt="" src="images/thumbs/avatar1.png" /></div>
                                        <div class="info">
                                            <a href="">Squint</a> <br />
                                            Front-End Engineer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img alt="" src="images/thumbs/avatar2.png" /></div>
                                        <div class="info">
                                            <a href="">Eunice</a> <br />
                                            Architectural Designer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img alt="" src="images/thumbs/avatar1.png" /></div>
                                        <div class="info">
                                            <a href="">Captain Gutt</a> <br />
                                            Software Engineer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img alt="" src="images/thumbs/avatar2.png" /></div>
                                        <div class="info">
                                            <a href="">Flynn</a> <br />
                                            Accounting Manager <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                </ul>
                                <a class="more" href="">View More Users</a>
                            </div><!--widgetcontent-->
                        </div>
                        
                        <div class="widgetbox">
                            <div class="title"><h3>Latest News</h3></div>
                            <div class="widgetcontent">
                                <div id="accordion" class="accordion">
                                    <h3><a href="#">Section 1</a></h3>
                                    <div>
                                        <p>
                                        Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
                                        ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
                                        amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
                                        odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
                                        </p>
                                    </div>
                                    <h3><a href="#">Section 2</a></h3>
                                    <div>
                                        <p>
                                        Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
                                        purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
                                        velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
                                        suscipit faucibus urna.
                                        </p>
                                    </div>
                                    <h3><a href="#">Section 3</a></h3>
                                    <div>
                                        <p>
                                        Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
                                        Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
                                        ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
                                        lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
                                        </p>
                                        <ul class="margin1020">
                                            <li>List item one</li>
                                            <li>List item two</li>
                                            <li>List item three</li>
                                        </ul>
                                    </div>
                                    <h3><a href="#">Section 4</a></h3>
                                    <div>
                                        <p>
                                        Cras dictum. Pellentesque habitant morbi tristique senectus et netus
                                        et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
                                        faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
                                        mauris vel est.
                                        </p>
                                        <p>
                                        Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
                                        inceptos himenaeos.
                                        </p>
                                    </div>
                                </div>     
                              </div> <!--widgetcontent-->
                         </div><!--widgetbox-->                        
                                            
                    </div><!--one_third last-->
                    
                    
            </div><!-- #updates -->
            
            <div id="activities" class="subcontent" style="display: none;">
            	&nbsp;
            </div><!-- #activities -->
        
        </div><!--contentwrapper-->
        
        <br clear="all" />
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>