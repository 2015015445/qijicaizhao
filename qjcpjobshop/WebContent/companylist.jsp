<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="${ctx}/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>全国-公司列表-奇迹才聘网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="全国condition-condition-公司列表-奇迹才聘网-最专业的互联网招聘平台" name="description">
<meta content="全国condition-公司列表-奇迹才聘网-最专业的互联网招聘平台" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/popup.css"/>
<script src="${ctx}/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/jquery.lib.min.js"></script>
<script src="${ctx}/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/additional-methods.js"></script>
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
    		<a href="index.html" class="logo">
    			<img src="${ctx}/style/images/logo.png" width="229" height="43" alt="奇迹才聘招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx}/user/index">首页</a></li>
    			<li class="current"><a href="${ctx}/company/findallcompany" >公司</a></li>
    			<li ><a href="htoForum.html" target="_blank">职业预测</a></li>
    			<li ><a href="jianli.html" rel="nofollow">我的简历</a></li>
				<li ><a href="${ctx}/position/create?id=${email}" rel="nofollow">发布职位</a></li>
	    	</ul>
	    	<% 
	    		Cookie cookie = (Cookie)session.getAttribute("cookie");
	    		if(cookie!=null){
	    	%>
	    	
	    		<dl class="collapsible_menu">
            		<dt>
           			<span>${email}&nbsp;</span> 
            		<span class="red dn" id="noticeDot-1"></span>
            		<i></i>
            	</dt>
                                	<dd style="display: none;"><a href="positions.html">我发布的职位</a></dd>
                	<dd style="display: none;"><a href="positions.html">我收到的简历</a></dd>
                	<dd class="btm" style="display: none;"><a href="myhome.html">我的公司主页</a></dd>
                	<dd style="display: none;"><a href="jianli.html">我要找工作</a></dd>
                                                <dd style="display: none;"><a href="accountBind.html">帐号设置</a></dd>
                                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx}/user/signout">退出</a></dd>
            </dl>
	    	
	    	<%}else{ %>
	    	<ul class="loginTop">
            	<li><a href="${ctx}/user/login1" rel="nofollow">登录</a></li>
            	<li>|</li>
            	<li><a href="${ctx}/user/regist1" rel="nofollow">注册</a></li>
            </ul>
	    	<%} %>
            
        </div>
    </div><!-- end #header -->
    <div id="container">
        
        <div class="clearfix">
            <div class="content_l">
            	<form id="companyListForm" name="companyListForm" method="get" action="h/c/companylist.html">
	                <input type="hidden" id="city" name="city" value="全国" />
	                <input type="hidden" id="fs" name="fs" value="" />
	                <input type="hidden" id="ifs" name="ifs" value="" />
	                <input type="hidden" id="ol" name="ol" value="" />
	                <dl class="hc_tag">
	                    <dt>
	                       <!--  <h2 class="fl">热门公司</h2> -->
	                        <ul class="workplace reset fr" id="workplaceSelect">
	                        	                                <li >
                                	<a href="${ctx}/company/findallcompany" >全国</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="${ctx}/company/findcompanybylocation?field=北京" >北京</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="${ctx}/company/findcompanybylocation?field=上海" >上海</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="${ctx}/company/findcompanybylocation?field=广州" >广州</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="${ctx}/company/findcompanybylocation?field=深圳" >深圳</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="${ctx}/company/findcompanybylocation?field=成都" >成都</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="${ctx}/company/findcompanybylocation?field=杭州" >杭州</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="${ctx}/company/findcompanybylocation?field=武汉" >武汉</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="${ctx}/company/findcompanybylocation?field=南京" >南京</a> 
                                	                                	|
                                	                                </li>
	                                                            <li  class="more" >
                                	<a href="javascript:void(0)" >其他</a> 
                                	                                	<div class="triangle citymore_arrow"></div>
                                	                                </li>
	                            	                            <li id="box_expectCity" class="searchlist_expectCity dn">
					            	<span class="bot"></span>
					            	<span class="top"></span>
						    								    										    							    										    		<dl>
							    			<dt>ABCDEF</dt>
							    			<dd>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=北京" style="float:none;margin:0 0">北京</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=长春" style="float:none;margin:0 0">长春</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=成都" style="float:none;margin:0 0">成都</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=重庆" style="float:none;margin:0 0">重庆</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=长沙" style="float:none;margin:0 0">长沙</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=常州" style="float:none;margin:0 0">常州</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=东莞" style="float:none;margin:0 0">东莞</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=大连" style="float:none;margin:0 0">大连</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=佛山" style="float:none;margin:0 0">佛山</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=福州" style="float:none;margin:0 0">福州</a></span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>GHIJ</dt>
							    			<dd>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=贵阳" style="float:none;margin:0 0">贵阳</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=广州" style="float:none;margin:0 0">广州</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=哈尔滨" style="float:none;margin:0 0">哈尔滨</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=合肥" style="float:none;margin:0 0">合肥</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=海口" style="float:none;margin:0 0">海口</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=杭州" style="float:none;margin:0 0">杭州</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=惠州" style="float:none;margin:0 0">惠州</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=金华" style="float:none;margin:0 0">金华</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=济南" style="float:none;margin:0 0">济南</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=嘉兴" style="float:none;margin:0 0">嘉兴</a></span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>KLMN</dt>
							    			<dd>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=昆明" style="float:none;margin:0 0">昆明</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=廊坊" style="float:none;margin:0 0">廊坊</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=宁波" style="float:none;margin:0 0">宁波</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=南昌" style="float:none;margin:0 0">南昌</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=南京" style="float:none;margin:0 0">南京</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=南宁" style="float:none;margin:0 0">南宁</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=南通" style="float:none;margin:0 0">南通</a></span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>OPQR</dt>
							    			<dd>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=青岛" style="float:none;margin:0 0">青岛</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=泉州" style="float:none;margin:0 0">泉州</a></span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>STUV</dt>
							    			<dd>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=上海" style="float:none;margin:0 0">上海</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=石家庄" style="float:none;margin:0 0">石家庄</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=绍兴" style="float:none;margin:0 0">绍兴</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=沈阳" style="float:none;margin:0 0">沈阳</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=深圳" style="float:none;margin:0 0">深圳</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=苏州" style="float:none;margin:0 0">苏州</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=天津" style="float:none;margin:0 0">天津</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=太原" style="float:none;margin:0 0">太原</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=台州" style="float:none;margin:0 0">台州</a></span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>WXYZ</dt>
							    			<dd>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=武汉" style="float:none;margin:0 0">武汉</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=无锡" style="float:none;margin:0 0">无锡</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=温州" style="float:none;margin:0 0">温州</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=西安" style="float:none;margin:0 0">西安</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=厦门" style="float:none;margin:0 0">厦门</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=烟台" style="float:none;margin:0 0">烟台</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=珠海" style="float:none;margin:0 0">珠海</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=中山" style="float:none;margin:0 0">中山</a></span>
							     										     				<span><a href="${ctx}/company/findcompanybylocation?field=郑州" style="float:none;margin:0 0">郑州</a></span>
							     										    			</dd>
							    	  	</dl>
							    	  								    								    </li>
	                        </ul>
	                    </dt>
	                    <dd>
	                        <dl>
	                            <dt>发展阶段：</dt>
	                            <dd>
	                            			        <a href="${ctx}/company/findcompanybystage?field=初创型">初创型</a>
		                                	        <a href="${ctx}/company/findcompanybystage?field=成长型">成长型</a>
		                                	        <a href="${ctx}/company/findcompanybystage?field=成熟型">成熟型</a>
		                                	        <a href="${ctx}/company/findcompanybystage?field=已上市">已上市</a>
		                                	                                	                            </dd>
	                        </dl>
	                        <dl>
	                            <dt>行业领域：</dt>
	                            <dd>
           			                                <a href="${ctx}/company/findcompanybyfield?field=移动互联网">移动互联网</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=电子商务">电子商务</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=社交">社交</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=企业服务">企业服务</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=O2O">O2O</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=教育">教育</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=移动互联网"文化艺术>文化艺术</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=游戏">游戏</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=在线旅游">在线旅游</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=金融互联网">金融互联网</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=健康医疗">健康医疗</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=生活服务">生活服务</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=硬件">硬件</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=搜索">搜索</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=安全">安全</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=运动体育">运动体育</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=云计算大数据">云计算\大数据</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=移动广告">移动广告</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=社会化营销">社会化营销</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=视频多媒体">视频多媒体</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=媒体">媒体</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=智能家居">智能家居</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=智能电视">智能电视</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=分类信息">分类信息</a>
            	                                	<a href="${ctx}/company/findcompanybyfield?field=招聘">招聘</a>
            	                            </dd>
	                        </dl>
	                        <!-- <dl>
	                            <dt>热门标签：</dt>
	                            <dd>
	                                	                                			                               	<a href="javascript:void(0)">年底双薪</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">专项奖金</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">股票期权</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">绩效奖金</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">年终分红</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">带薪年假</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">交通补助</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">通讯津贴</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">午餐补助</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">定期体检</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">弹性工作</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">年度旅游</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">节日礼物</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">免费班车</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">帅哥多</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">美女多</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">领导好</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">扁平管理</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">管理规范</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">技能培训</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">岗位晋升</a>
		                                	                                	                                			                               	<a href="javascript:void(0)">五险一金</a>
		                                	                                	                            </dd>
	                        </dl> -->
	                    </dd>
	                </dl>
	               	      <ul class="hc_list reset">
		                      	<!-- <li  style="clear:both;" >
			                        <a href="h/c/25829.html" target="_blank">
			                        	<h3 title="CCIC">CCIC</h3>
			                        	<div class="comLogo">
				                        	<img src="style/images/logo_default.png" width="190" height="190" alt="CCIC" />
				                        	<ul>
				                        		<li>安全</li>
				                        		<li>深圳，D轮及以上</li>
				                        	</ul>
			                        	</div>
			                        </a>
			                        			                        	<a href="h/jobs/148928.html" target="_blank"> 环境监测工程师</a>
			                        			                        	<a href="h/jobs/148919.html" target="_blank"> 电学校准工程师</a>
			                        			                        	<a href="h/jobs/148931.html" target="_blank"> 能源管理项目经理</a>
			                        			                        <ul class="reset ctags">
			                        				                        				                        	<li>D轮及以上</li>
																							                        				                        	<li>安全</li>
																							                        				                        	<li>年终分红</li>
																							                        				                        	<li>绩效奖金</li>
																							                        				                        	<li>五险一金</li>
																							                        				                        	<li>交通补助</li>
																						                        </ul>
			                    </li> -->
		                        <c:forEach items="${list}" var="p1">
			                        <li >
				                        <a href="${ctx}/company/companydetail?email=${p1.email}&&id1=${email}" target="_blank">
				                        	<h3 title="${p1.name}">${p1.name}</h3>
				                        	<div class="comLogo">
					                        	<img src="${p1.image}" width="190" height="190" alt="${p1.name}" />
					                        	<ul>
					                        		<li>${p1.thefinancingstage}</li>
					                        	</ul>
				                        	</div>
				                        </a>
   			                        	<!-- <a href="h/jobs/148976.html" target="_blank"> PHP</a>
   			                        	<a href="h/jobs/148979.html" target="_blank"> U3D</a>
   			                        	<a href="h/jobs/148991.html" target="_blank"> 游戏动作/主美</a> -->
			                      		<ul class="reset ctags">
		                        			<li>${p1.thefinancingstage}</li>
   				                        	<li>${p1.industryfield}</li>
   				                        	<li style="white-space: pre-wrap">${p1.briefintroduction}</li>
				                        </ul>
				                    </li>
				                </c:forEach>
		                </ul>
              			<!-- <div class="Pagination"></div> -->
              			<div class="Pagination myself">
	              			<a href="${ctx}/company/findallcompany?pageNum=1">首页</a>
	              			<a href="${ctx}/company/findallcompany?pageNum=${page.prePageNum }">上一页 </a>
	              			<c:forEach items="${pagelist1}" var="p2">
	              				<a href="${ctx}/company/findallcompany?pageNum=${p2}" title="${p2}">${p2}</a>
	              			</c:forEach>
	              			<a href="${ctx}/company/findallcompany?pageNum=${page.nextPageNum }">下一页 </a>
	              			<a href="${ctx}/company/findallcompany?pageNum=${page.totalPageNum }">尾页</a>
	              			<p>共 ${page.totalPageNum}页，当前第${page.currentPageNum}页</p>
              			</div>
                  </form>
            </div>	
            <div class="content_r">
            	<div class="subscribe_side">
	            	<a href="subscribe.html" target="_blank">
	                    <div class="subpos"><span>订阅</span> 职位</div>
	                    <div class="c7">奇迹才聘网会根据你的筛选条件，定期将符合你要求的职位信息发给你
	                    </div>
	                    <div class="count">已有
	                    		                    		<em>3</em>
	                    		                    		<em>4</em>
	                    		                    		<em>2</em>
	                    		                    		<em>1</em>
	                    		                    		<em>0</em>
	                    		                    	人订阅
	                    </div>
	                    <i>我也要订阅职位</i>
	            	</a>
	            </div> 
                <div class="greybg qrcode mt20">
                	<img src="${ctx}/style/images/companylist_qr.png" width="242" height="242" alt="奇迹才聘微信公众号二维码" />
                    <span class="c7">扫描奇迹才聘二维码，微信轻松搜工作</span>
                </div>
               	<!-- <a href="h/speed/speed3.html" target="_blank" class="adSpeed"></a> -->
                <a href="h/subject/jobguide.html" target="_blank" class="eventAd">
               		<img src="${ctx}/style/images/subject280.jpg" width="280" height="135" />
               	</a>
               	<a href="h/subject/risingPrice.html" target="_blank" class="eventAd">
               		<img src="${ctx}/style/images/rising280.png" width="280" height="135" />
               	</a>
            </div>
       	</div>
   	
   	<input type="hidden" value="" name="userid" id="userid" />
      
<script type="text/javascript" src="${ctx}/style/js/company_list.min.js"></script>
<!-- <script>
$(function(){
	/*分页 */
 	 	 				 		$('.Pagination').pager({
	      currPage: 1,
	      pageNOName: "pn",
	      form: "companyListForm",
	      pageCount: 20,
	      pageSize: 5
	});	
})
</script> -->       	
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="about.html" target="_blank" rel="nofollow">联系我们</a>
		    
		    <a href=https://weibo.com/u/5704043792 target="_blank" rel="nofollow">奇迹才聘微博</a>
		    <a class="footer_qr" href="javascript:void(0)" rel="nofollow">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2018-2020 QiJiCaiPin <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script type="text/javascript" src="${ctx}/style/js/core.min.js"></script>
<script type="text/javascript" src="${ctx}/style/js/popup.min.js"></script>

<!--  -->

</body>
</html>