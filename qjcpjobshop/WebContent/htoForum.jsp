<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>奇迹才聘网-最专业的互联网招聘平台</title>
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
<link rel="stylesheet" type="text/css" href="style/css/htoForumContent.css">
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
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="index.html" class="logo">
    			<img src="style/images/logo.png" width="229" height="43" alt="奇迹才聘招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="index.html">首页</a></li>
    			<li ><a href="companylist.html" >公司</a></li>
    			<li class="current"><a href="htoForum.html" target="_blank">职位预测</a></li>
    				    			<li ><a href="jianli.html" rel="nofollow">我的简历</a></li>
	    							    			<li ><a href="create.html" rel="nofollow">发布职位</a></li>
	    		    		</ul>
        	            <ul class="loginTop">
            	<li><a href="login.html" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="register.html" rel="nofollow">注册</a></li>
            </ul>
        </div>
	</div>

	<!-- content -->
	<div id="content">
		<p id="prePosi">职位预测<p/>
		<form action="${ctx }/htofroum" method="post">
			<div class="floatLeft">
				<label for="性别">性别</label>
				<select name="gender" id="sex">
					<option value="1">男</option>
					<option value="0">女</option>
				</select>
			</div>
			<div class="floatLeft Right">
				<label for="年龄">年龄</label>
				<select name="age" id="age">
					<option value="1">18</option>
					<option value="1">19</option>
					<option value="1">20</option>
					<option value="2">21</option>
					<option value="2">22</option>
					<option value="2">23</option>
					<option value="3">24</option>
					<option value="3">25</option>
					<option value="3">26</option>
					<option value="4">27</option>
					<option value="4">28</option>
					<option value="4">29</option>
					<option value="4">30</option>
					<option value="5">31</option>
					<option value="5">32</option>
					<option value="5">33</option>
					<option value="5">34</option>
					<option value="5">35</option>
					<option value="6">36</option>
				</select>
			</div>
			<div class="floatLeft">
				<label for="专业">专业</label>
				<input type="text" id="objInput">
			</div>
			<div class="floatLeft Right">
				<label for="学历">学历</label>
				<select name="degree" id="">
					<option value="0">大专及以下</option>
					<option value="1">本科</option>
					<option value="2">硕士及以上</option>
				</select>
			</div>
			<div style="clear:both;"></div>
			<div id="formItem">
				<div id="item1">
					<h1>工作经历</h1>
					<label>公司行业</label><input type="text">
					<label class = "trans-right">公司规模</label>
					<select name="size">
					<option value="1">1-50人</option>
					<option value="2">50-100人</option>
					<option value="3">100-300人</option>
					<option value="4">300-500人</option>
					<option value="5">500-1000人</option>
					<option value="6">1000-10000人</option>
					<option value="7">10000人以上</option>
					</select>

					<label>职位名称</label><input type="text">
					<label class = "trans-right">职位类型</label><input type="text">

					<label>部门</label><input type="text">
					<label class = "trans-right">月薪</label>
					<select name="salary">
					<option value="0">1-2000</option>
					<option value="1">2000-4000</option>
					<option value="2">4000-6000</option>
					<option value="3">6000-8000</option>
					<option value="4">8000-10000</option>
					<option value="5">10000-20000</option>
					<option value="6">20000以上</option>
					
					</select>

					<label>开始时间</label><select class="itemYear"><option>2018</option></select>年<select  class="itemMonth"><option value="">1</option></select>月					
					<label class = "trans-right">结束时间</label><select class="itemYear"><option>2018</option></select>年<select  class="itemMonth"><option value="">1</option></select>月
				</div>
				<div id="item2">
					<h1>工作经历</h1>
					<label>公司行业</label><input type="text">
					<label class = "trans-right">公司规模</label><select><option>1-50人</option></select>

					<label>职位名称</label><input type="text">
					<label class = "trans-right">职位类型</label><input type="text">

					<label>部门</label><input type="text">
					<label class = "trans-right">月薪</label><select><option>1-2000</option></select>

					<label>开始时间</label><select class="itemYear"><option>2018</option></select>年<select  class="itemMonth"><option value="">1</option></select>月					
					<label class = "trans-right">结束时间</label><select class="itemYear"><option>2018</option></select>年<select  class="itemMonth"><option value="">1</option></select>月
				</div>
			</div>
			<button class = 'itemBtn' href="yvcejieguo.html">提交</button>
		</form>
	</div>










<!-- ----------------------------------- end --------------------------------------- -->
<script type="text/javascript" src="style/js/Chart.min.js"></script>
<script type="text/javascript" src="style/js/home.min.js"></script>
<script type="text/javascript" src="style/js/count.js"></script>
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="h/about.html" target="_blank" rel="nofollow">联系我们</a>
		    <a href="http://www.baidu.com" target="_blank">互联网公司导航</a>
		    <a href=https://weibo.com/u/5704043792 target="_blank" rel="nofollow">奇迹才聘微博</a>
		    <a class="footer_qr" href="javascript:void(0)" rel="nofollow">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2018-2020 QiJiCaiPin <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>