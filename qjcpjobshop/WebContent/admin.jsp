<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%> 
<%@ page import="java.text.*"%> 
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>
<base href="<%=basePath%>"> 
<script id="allmobilize" charset="utf-8" src="${basePath}/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>奇迹才聘网-管理</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="奇迹才聘网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在奇迹才聘网" name="description">
<meta content="奇迹才聘,奇迹才聘网,奇迹才聘招聘 ,互联网招聘,奇迹才聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 奇迹才聘官网, 奇迹才聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">

<link rel="stylesheet" type="text/css" href="style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="style/css/popup.css"/>
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="${ctx}/style/js/conv.js"></script>
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="${ctx}/index.html" class="logo">
    			<img src="${ctx}/style/images/logo.png" width="229" height="43" alt="奇迹才聘招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current">管理</li>
            </ul>
        </div>
    </div><!-- end #header -->
    <div>
    	<%-- <div><a href="${ctx}/admin/all" style="font-size:25px;color:white;padding-left:210px;">商品管理</a></div> --%>
		<div style="padding-bottom:400px;padding-top:100px;"><a href="${ctx}/admin/alluser" style="font-size:25px;color:black;padding-left:240px;">用户管理</a></div>
    </div>
    <div id="footer">
		<div class="wrapper">
			<a href="about.html" target="_blank" rel="nofollow">联系我们</a>
		    
		    <a href=https://weibo.com/u/5704043792 target="_blank" rel="nofollow">奇迹才聘微博</a>
		    <a class="footer_qr" href="javascript:void(0)" rel="nofollow">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2018-2020 QiJiCaiPin <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
		</div>
	</div>
</body>
</html>