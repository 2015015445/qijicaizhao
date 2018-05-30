<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
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
    			<li ><a href="index.html">首页</a></li>
    			<li class="current"><a href="companylist.html" >公司</a></li>
    			<li ><a href="htoForum.html" target="_blank">职业预测</a></li>
    				    			<li ><a href="jianli.html" rel="nofollow">我的简历</a></li>
	    							<li ><a href="create.html" rel="nofollow">发布职位</a></li>
	    		    		</ul>
        	            <ul class="loginTop">
            	<li><a href="${ctx}/user/login1" rel="nofollow">登录</a></li>
            	<li>|</li>
            	<li><a href="${ctx}/user/regist1" rel="nofollow">注册</a></li>
            </ul>
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
                                	<a href="javascript:void(0)"  class="current" >全国</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >北京</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >上海</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >广州</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >深圳</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >成都</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >杭州</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >武汉</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >南京</a> 
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
							     										     				<span>北京</span>
							     										     				<span>长春</span>
							     										     				<span>成都</span>
							     										     				<span>重庆</span>
							     										     				<span>长沙</span>
							     										     				<span>常州</span>
							     										     				<span>东莞</span>
							     										     				<span>大连</span>
							     										     				<span>佛山</span>
							     										     				<span>福州</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>GHIJ</dt>
							    			<dd>
							     										     				<span>贵阳</span>
							     										     				<span>广州</span>
							     										     				<span>哈尔滨</span>
							     										     				<span>合肥</span>
							     										     				<span>海口</span>
							     										     				<span>杭州</span>
							     										     				<span>惠州</span>
							     										     				<span>金华</span>
							     										     				<span>济南</span>
							     										     				<span>嘉兴</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>KLMN</dt>
							    			<dd>
							     										     				<span>昆明</span>
							     										     				<span>廊坊</span>
							     										     				<span>宁波</span>
							     										     				<span>南昌</span>
							     										     				<span>南京</span>
							     										     				<span>南宁</span>
							     										     				<span>南通</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>OPQR</dt>
							    			<dd>
							     										     				<span>青岛</span>
							     										     				<span>泉州</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>STUV</dt>
							    			<dd>
							     										     				<span>上海</span>
							     										     				<span>石家庄</span>
							     										     				<span>绍兴</span>
							     										     				<span>沈阳</span>
							     										     				<span>深圳</span>
							     										     				<span>苏州</span>
							     										     				<span>天津</span>
							     										     				<span>太原</span>
							     										     				<span>台州</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>WXYZ</dt>
							    			<dd>
							     										     				<span>武汉</span>
							     										     				<span>无锡</span>
							     										     				<span>温州</span>
							     										     				<span>西安</span>
							     										     				<span>厦门</span>
							     										     				<span>烟台</span>
							     										     				<span>珠海</span>
							     										     				<span>中山</span>
							     										     				<span>郑州</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    								    </li>
	                        </ul>
	                    </dt>
	                    <dd>
	                        <dl>
	                            <dt>发展阶段：</dt>
	                            <dd>
	                            			                            			                                <a href="javascript:void(0)">初创型</a>
		                                	                                		                            			                                <a href="javascript:void(0)">成长型</a>
		                                	                                		                            			                                <a href="javascript:void(0)">成熟型</a>
		                                	                                		                            			                                <a href="javascript:void(0)">已上市</a>
		                                	                                	                            </dd>
	                        </dl>
	                        <dl>
	                            <dt>行业领域：</dt>
	                            <dd>
	                                	                                			                                <a href="javascript:void(0)">移动互联网</a>
		                                	                                	                                			                                <a href="javascript:void(0)">电子商务</a>
		                                	                                	                                			                                <a href="javascript:void(0)">社交</a>
		                                	                                	                                			                                <a href="javascript:void(0)">企业服务</a>
		                                	                                	                                			                                <a href="javascript:void(0)">O2O</a>
		                                	                                	                                			                                <a href="javascript:void(0)">教育</a>
		                                	                                	                                			                                <a href="javascript:void(0)">文化艺术</a>
		                                	                                	                                			                                <a href="javascript:void(0)">游戏</a>
		                                	                                	                                			                                <a href="javascript:void(0)">在线旅游</a>
		                                	                                	                                			                                <a href="javascript:void(0)">金融互联网</a>
		                                	                                	                                			                                <a href="javascript:void(0)">健康医疗</a>
		                                	                                	                                			                                <a href="javascript:void(0)">生活服务</a>
		                                	                                	                                			                                <a href="javascript:void(0)">硬件</a>
		                                	                                	                                			                                <a href="javascript:void(0)">搜索</a>
		                                	                                	                                			                                <a href="javascript:void(0)">安全</a>
		                                	                                	                                			                                <a href="javascript:void(0)">运动体育</a>
		                                	                                	                                			                                <a href="javascript:void(0)">云计算\大数据</a>
		                                	                                	                                			                                <a href="javascript:void(0)">移动广告</a>
		                                	                                	                                			                                <a href="javascript:void(0)">社会化营销</a>
		                                	                                	                                			                                <a href="javascript:void(0)">视频多媒体</a>
		                                	                                	                                			                                <a href="javascript:void(0)">媒体</a>
		                                	                                	                                			                                <a href="javascript:void(0)">智能家居</a>
		                                	                                	                                			                                <a href="javascript:void(0)">智能电视</a>
		                                	                                	                                			                                <a href="javascript:void(0)">分类信息</a>
		                                	                                	                                			                                <a href="javascript:void(0)">招聘</a>
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
				                        <a href="${p1.url}" target="_blank">
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
				                        </ul>
				                    </li>
				                </c:forEach>
		                </ul>
		                
              			<div class="Pagination"></div>
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
      
<script type="text/javascript" src="style/js/company_list.min.js"></script>
<script>
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
</script>       	
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

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!--  -->

</body>
</html>