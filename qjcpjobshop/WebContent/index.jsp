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
<%-- <% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %> --%>
<base href="<%=basePath%>"> 
<script id="allmobilize" charset="utf-8" src="${basePath}/style/js/allmobilize.min.js"></script>
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
<style type="text/css">
	.numstyle1{
		background-color:#0d9572;padding: 5px 10px 5px 10px;margin:10px 10px 0px 0px;
	}
	
</style>
<script type="text/javascript">
function searchclick() {
	var na = $("#search_input").val()
	if ("" == na || na ==null) {
		alert('请输入要查找的内容')
	}
}
function clickj() {
	alert("你还没有登陆！！");
}
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
    		<a href="index.jsp" class="logo">
    			<img src="${ctx}/style/images/logo.png" width="229" height="43" alt="奇迹才聘招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current"><a href="${ctx }/position/index?pageNum=1">首页</a></li>
    			<li ><a href="${ctx }/company/findallcompany" >公司</a></li>
    			<li ><a href="htoForum.jsp" target="_blank">职业预测</a></li>
				<li ><a href="${ctx }/delivery?pageNum=1&myEmail=123&type=5" target="_blank">123</a></li>
<!--     		<li ><a href="jianli.jsp" rel="nofollow">我的简历</a></li> -->
<%-- 	    	<li ><a href="${ctx}/create.jsp?id=${id}" rel="nofollow">发布职位</a></li> --%>

    			<c:if test="${user == null }"><li ><a rel="nofollow" onclick="clickj()">我的简历</a></li></c:if>
    			<c:if test="${user != null }"><li ><a href="${ctx}/jianli" rel="nofollow">我的简历</a></li></c:if>
    			
	    		<li ><a href="${ctx}/create.jsp?id=${id}" rel="nofollow">发布职位</a></li>

	    	</ul>
        	<ul class="loginTop">
            	<li><a href="${ctx}/user/login1" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="${ctx}/user/regist1" rel="nofollow">注册</a></li>
            </ul>
        </div>
    </div><!-- end #header -->
    <div id="container">
        				
		<div id="sidebar">
			<div class="mainNavs">
						
									<div class="menu_box">
						<div class="menu_main">
							<h2>技术 <span></span></h2>
								<a href="${ctx }/position/search?kd=Java">Java</a>
				<a href="${ctx }/position/search?kd=PHP">PHP</a>
				<a href="${ctx }/position/search?kd=C">C</a>
				<a href="${ctx }/position/search?kd=C++">C++</a>
				<a href="${ctx }/position/search?kd=Android">Android</a>
				<a href="${ctx }/position/search?kd=iOS">iOS</a>
				<a href="${ctx }/position/searchtype?kd=前端开发">前端开发</a>
				<a href="${ctx }/position/searchtype?kd=测试">测试</a>
				<a href="${ctx }/position/search?kd=技术经理">技术经理</a>
				<a href="${ctx }/position/search?kd=项目经理">项目经理</a>
				<a href="${ctx }/position/search?kd=架构师">架构师</a>
			</div>
				<div class="menu_sub dn">
					<dl class="reset">
					    <dt>
					        <a href="${ctx }/position/searchtype?kd=后端开发">后端开发</a>
					    </dt>
						<dd>
			   				<a href="${ctx }/position/search?kd=Java" class="curr">Java</a>
						   	<a href="${ctx }/position/search?kd=C++" class="curr">C++</a>
						   	<a href="${ctx }/position/search?kd=PHP" class="curr">PHP</a>
						   	<a href="${ctx }/position/search?kd=数据挖掘">数据挖掘</a>
						   	<a href="${ctx }/position/search?kd=C" class="curr">C</a>
						   	<a href="${ctx }/position/search?kd=C#">C#</a>
						   	<a href="${ctx }/position/search?kd=.NET">.NET</a>
						   	<a href="${ctx }/position/search?kd=Hadoop">Hadoop</a>
						   	<a href="${ctx }/position/search?kd=Python">Python</a>
						   	<a href="${ctx }/position/search?kd=Delphi">Delphi</a>
						   	<a href="${ctx }/position/search?kd=VB">VB</a>
						   	<a href="${ctx }/position/search?kd=Perl">Perl</a>
						   	<a href="${ctx }/position/search?kd=Ruby">Ruby</a>
						   	<a href="${ctx }/position/search?kd=Node.js">Node.js</a>
						</dd>
					</dl>
					<dl class="reset">
					    <dt>
					    	<a href="${ctx }/position/searchtype?kd=移动开发">移动开发</a>
					    </dt>
						<dd>
							<a href="${ctx }/position/search?kd=HTNL5">HTML5</a>
							<a href="${ctx }/position/search?kd=Android" class="curr">Android</a>
							<a href="${ctx }/position/search?kd=iOS"	class="curr">iOS</a>
							<a href="${ctx }/position/search?kd=WP">WP</a>
						</dd>
					</dl>
					<dl class="reset">
						<dt>
					    	<a href="${ctx }/position/searchtype?kd=前端开发">前端开发</a>
					    </dt>
						<dd>
							<a href="${ctx }/position/search?kd=web前端">web前端</a>
							<a href="${ctx }/position/search?kd=Flash">Flash</a>
						   	<a href="${ctx }/position/search?kd=html5">html5</a>
						   	<a href="${ctx }/position/search?kd=JavaScript">JavaScript</a>
						   	<a href="${ctx }/position/search?kd=U3D">U3D</a>
						   	<a href="${ctx }/position/search?kd=COCOS2D-X">COCOS2D-X</a>
						</dd>
					</dl>
					<dl class="reset">
						<dt>
					    	<a href="${ctx }/position/searchtype?kd=测试">测试</a>
					    </dt>
						<dd>
			   				<a href="${ctx }/position/search?kd=测试工程师">测试工程师</a>
						   	<a href="${ctx }/position/search?kd=自动化测试">自动化测试</a>
						   	<a href="${ctx }/position/search?kd=功能测试">功能测试</a>
						   	<a href="${ctx }/position/search?kd=性能测试">性能测试</a>
						   	<a href="${ctx }/position/search?kd=测试开发">测试开发</a>
						</dd>
					</dl>
					<dl class="reset">
						<dt>
					    	<a href="${ctx }/position/searchtype?kd=运维">运维</a>
					    </dt>
						<dd>
			   				<a href="${ctx }/position/search?kd=运维工程师">运维工程师</a>
						   	<a href="${ctx }/position/search?kd=运维开发工程师"	>运维开发工程师</a>
						   	<a href="${ctx }/position/search?kd=网络工程师">网络工程师</a>
						   	<a href="${ctx }/position/search?kd=系统工程师">系统工程师</a>
						   	<a href="${ctx }/position/search?kd=IT支持">IT支持</a>
						</dd>
					</dl>
					<dl class="reset">
						<dt>
					    	<a href="${ctx }/position/searchtype?kd=DBA">DBA</a>
					    </dt>
						<dd>
			   				<a href="${ctx }/position/search?kd=MySQL">MySQL</a>
						   	<a href="${ctx }/position/search?kd=SQLServer">SQLServer</a>
						   	<a href="${ctx }/position/search?kd=Oracle">Oracle</a>
						   	<a href="${ctx }/position/search?kd=DB2">DB2</a>
						   	<a href="${ctx }/position/search?kd=MongoDB">MongoDB</a>
							            							        </dd>
				    	</dl>
				    	<dl class="reset">
							<dt>
					        	<a href="${ctx }/position/searchtype?kd=项目管理">项目管理</a>
					        </dt>
							<dd>
								<a href="${ctx }/position/search?kd=项目经理" class="curr">项目经理</a>
							</dd>
				    	</dl>
						<dl class="reset">
					    	<dt>
					        	<a href="${ctx }/position/searchtype?kd=高端技术职位">高端职位</a>
					        </dt>
						    <dd>
				   				<a href="${ctx }/position/search?kd=技术经理" class="curr">技术经理</a>
							   	<a href="${ctx }/position/search?kd=技术总监">技术总监</a>
							   	<a href="${ctx }/position/search?kd=测试经理">测试经理</a>
							   	<a href="${ctx }/position/search?kd=架构师" class="curr">架构师</a>
							   	<a href="${ctx }/position/search?kd=CTO">CTO</a>
							   	<a href="${ctx }/position/search?kd=运维总监">运维总监</a>
							</dd>
					    </dl>
					</div>
				</div>
				<div class="menu_box">
					<div class="menu_main">
						<h2>产品 <span></span></h2>
    						<a href="${ctx }/position/search?kd=产品经理">产品经理</a>
		            		<a href="${ctx }/position/search?kd=产品助理">产品助理</a>
		            		<a href="${ctx }/position/searchtype?kd=无线产品经理">无线产品经理</a>
		            		<a href="${ctx }/position/search?kd=游戏策划">游戏策划</a>
				    </div>
					<div class="menu_sub dn">
					   	<dl class="reset">
					        <dt>
					        	<a href="${ctx }/position/searchtype?kd=产品经理">产品经理</a>
					        </dt>
						    <dd>
								<a href="${ctx }/position/search?kd=产品经理" class="curr">产品经理</a>
								<a href="${ctx }/position/search?kd=网页产品经理">网页产品经理</a>
								<a href="${ctx }/position/search?kd=移动产品经理">移动产品经理</a>
								<a href="${ctx }/position/search?kd=产品助理" class="curr"	>产品助理</a>
								<a href="${ctx }/position/search?kd=数据产品经理">数据产品经理</a>
								<a href="${ctx }/position/search?kd=电商产品经理"	>电商产品经理</a>
								<a href="${ctx }/position/search?kd=游戏策划"	 class="curr">游戏策划</a>
							</dd>
					    </dl>
						<dl class="reset">
					    	<dt>
					        	<a href="${ctx }/position/searchtype?kd=产品设计师">产品设计师</a>
					        </dt>
						    <dd>
								<a href="${ctx }/position/search?kd=网页产品设计师">网页产品设计师</a>
								<a href="${ctx }/position/search?kd=无线产品设计师">无线产品设计师</a>
							</dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=高端产品职位">高端职位</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=产品部经理">产品部经理</a>
							            										   	<a href="${ctx }/position/search?kd=产品总监">产品总监</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>设计 <span></span></h2>
											            			<a href="${ctx }/position/search?kd=UI">UI</a>
				            					            		<a href="${ctx }/position/search?kd=UE">UE</a>
				            					            		<a href="${ctx }/position/search?kd=设计师">设计师</a>
				            					            		<a href="${ctx }/position/search?kd=交互设计">交互设计</a>
				            					            		<a href="${ctx }/position/search?kd=数据分析">数据分析</a>
				            					            					   	</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=视觉设计">视觉设计</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=视觉设计师">视觉设计师</a>
							            										   	<a href="${ctx }/position/search?kd=网页设计师">网页设计师</a>
							            										   	<a href="${ctx }/position/search?kd=Flash设计师">Flash设计师</a>
							            										   	<a href="${ctx }/position/search?kd=APP设计师">APP设计师</a>
							            										   	<a href="${ctx }/position/search?kd=UI设计师">UI设计师</a>
							            										   	<a href="${ctx }/position/search?kd=平面设计师">平面设计师</a>
							            										   	<a href="${ctx }/position/search?kd=美术设计师">美术设计师（2D/3D）</a>
							            										   	<a href="${ctx }/position/search?kd=广告设计师">广告设计师</a>
							            										   	<a href="${ctx }/position/search?kd=多媒体设计师">多媒体设计师</a>
							            										   	<a href="${ctx }/position/search?kd=原画师">原画师</a>
							            										   	<a href="${ctx }/position/search?kd=游戏特效">游戏特效</a>
							            										   	<a href="${ctx }/position/search?kd=游戏界面设计师">游戏界面设计师</a>
							            										   	<a href="${ctx }/position/search?kd=游戏场景">游戏场景</a>
							            										   	<a href="${ctx }/position/search?kd=游戏角色">游戏角色</a>
							            										   	<a href="${ctx }/position/search?kd=游戏动作">游戏动作</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=交互设计">交互设计</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=交互设计师">交互设计师</a>
							            										   	<a href="${ctx }/position/search?kd=无限交互设计师">无线交互设计师</a>
							            										   	<a href="${ctx }/position/search?kd=网页交互设计师">网页交互设计师</a>
							            										   	<a href="${ctx }/position/search?kd=硬件交互设计师">硬件交互设计师</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=用户研究">用户研究</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=数据分析师">数据分析师</a>
							            										   	<a href="${ctx }/position/search?kd=用户研究员">用户研究员</a>
							            										   	<a href="${ctx }/position/search?kd=游戏数值策划">游戏数值策划</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=高端设计职位">高端职位</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=设计经理/主管">设计经理/主管</a>
							            										   	<a href="${ctx }/position/search?kd=设计总监">设计总监</a>
							            										   	<a href="${ctx }/position/search?kd=视觉设计经理/主管">视觉设计经理/主管</a>
							            										   	<a href="${ctx }/position/search?kd=视觉设计总监">视觉设计总监</a>
							            										   	<a href="${ctx }/position/search?kd=交互设计经理/主管">交互设计经理/主管</a>
							            										   	<a href="${ctx }/position/search?kd=交互设计总监">交互设计总监</a>
							            										   	<a href="${ctx }/position/search?kd=用户研究经理/主管">用户研究经理/主管</a>
							            										   	<a href="${ctx }/position/search?kd=用户研究总监">用户研究总监</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>运营 <span></span></h2>
											            			<a href="${ctx }/position/searchtype?kd=运营">运营</a>
				            					            		<a href="${ctx }/position/search?kd=游戏运营">游戏运营</a>
				            					            		<a href="${ctx }/position/searchtype?kd=编辑">编辑</a>
				            					            					   	</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=运营">运营</a>
					        		</dt>
						        	<dd>
									   	<a href="${ctx }/position/search?kd=用户运营">用户运营</a>
										   	<a href="${ctx }/position/search?kd=产品运营">产品运营</a>
										   	<a href="${ctx }/position/search?kd=数据运营">数据运营</a>
										   	<a href="${ctx }/position/search?kd=内容运营">内容运营</a>
										   	<a href="${ctx }/position/search?kd=活动运营"	>活动运营</a>
										   	<a href="${ctx }/position/search?kd=商家运营">商家运营</a>
										   	<a href="${ctx }/position/search?kd=品类运营">品类运营</a>
										   	<a href="${ctx }/position/search?kd=游戏运营" class="curr">游戏运营</a>
										   	<a href="${ctx }/position/search?kd=网络推广">网络推广</a>
         							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=编辑">编辑</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=副主编">副主编</a>
							            										   	<a href="${ctx }/position/search?kd=内容编辑">内容编辑</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=客服">客服</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=售前咨询">售前咨询</a>
							            										   	<a href="${ctx }/position/search?kd=售后客服"	>售后客服</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=高端运营职位">高端职位</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=主编">主编</a>
							            										   	<a href="${ctx }/position/search?kd=运营总监">运营总监</a>
							            										   	<a href="${ctx }/position/search?kd=COO">COO</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>市场与销售 <span></span></h2>
											            			<a href="${ctx }/position/search?kd=市场推广">市场推广</a>
				            					            		<a href="${ctx }/position/search?kd=市场策划">市场策划</a>
				            					            		<a href="${ctx }/position/search?kd=活动策划">活动策划</a>
				            					            		<a href="${ctx }/position/search?kd=BD">BD</a>
				            					            		<a href="${ctx }/position/search?kd=销售经理">销售经理</a>
				            					            					   	</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=市场营销">市场营销</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=市场营销"	>市场营销</a>
							            										   	<a href="${ctx }/position/search?kd=市场策划" class="curr"	>市场策划</a>
							            										   	<a href="${ctx }/position/search?kd=市场顾问">市场顾问</a>
							            										   	<a href="${ctx }/position/search?kd=市场推广"	 class="curr">市场推广</a>
							            										   	<a href="${ctx }/position/search?kd=SEO">SEO</a>
							            										   	<a href="${ctx }/position/search?kd=SEM">SEM</a>
							            										   	<a href="${ctx }/position/search?kd=商务渠道">商务渠道</a>
							            										   	<a href="${ctx }/position/search?kd=商业数据分析">商业数据分析</a>
							            										   	<a href="${ctx }/position/search?kd=活动策划" class="curr">活动策划</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=公关">公关</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=媒介经理"	>媒介经理</a>
							            										   	<a href="${ctx }/position/search?kd=广告协调">广告协调</a>
							            										   	<a href="${ctx }/position/search?kd=品牌公关">品牌公关</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=销售">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				销售
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=销售专员"	>销售专员</a>
							            										   	<a href="${ctx }/position/search?kd=销售经理" class="curr">销售经理</a>
							            										   	<a href="${ctx }/position/search?kd=客户代表">客户代表</a>
							            										   	<a href="${ctx }/position/search?kd=大客户代表">大客户代表</a>
							            										   	<a href="${ctx }/position/search?kd=BD经理">BD经理</a>
							            										   	<a href="${ctx }/position/search?kd=商务渠道">商务渠道</a>
							            										   	<a href="${ctx }/position/search?kd=渠道销售">渠道销售</a>
							            										   	<a href="${ctx }/position/search?kd=代理商销售">代理商销售</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=高端市场职位">高端职位</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=市场总监">市场总监</a>
							            										   	<a href="${ctx }/position/search?kd=销售总监">销售总监</a>
							            										   	<a href="${ctx }/position/search?kd=商务总监"	>商务总监</a>
							            										   	<a href="${ctx }/position/search?kd=CMO">CMO</a>
							            										   	<a href="${ctx }/position/search?kd=公关总监"	>公关总监</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>职能 <span></span></h2>
											            			<a href="${ctx }/position/search?kd=HR">HR</a>
				            					            		<a href="${ctx }/position/search?kd=行政">行政</a>
				            					            		<a href="${ctx }/position/search?kd=会计">会计</a>
				            					            		<a href="${ctx }/position/search?kd=出纳">出纳</a>
				            					            					   	</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=人力资源">人力资源</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=人力资源">人力资源</a>
							            										   	<a href="${ctx }/position/search?kd=招聘">招聘</a>
							            										   	<a href="${ctx }/position/search?kd=HRBP"	>HRBP</a>
							            										   	<a href="${ctx }/position/search?kd=人事/HR">人事/HR</a>
							            										   	<a href="${ctx }/position/search?kd=培训经理">培训经理</a>
							            										   	<a href="${ctx }/position/search?kd=薪资福利经理">薪资福利经理</a>
							            										   	<a href="${ctx }/position/search?kd=绩效考核经理">绩效考核经理</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=行政">行政</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=助理">助理</a>
							            										   	<a href="${ctx }/position/search?kd=前台">前台</a>
							            										   	<a href="${ctx }/position/search?kd=法务">法务</a>
							            										   	<a href="${ctx }/position/search?kd=行政" class="curr">行政</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=财务">财务</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=会计" class="curr">会计</a>
							            										   	<a href="${ctx }/position/search?kd=出纳" class="curr">出纳</a>
							            										   	<a href="${ctx }/position/search?kd=财务">财务</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/position/searchtype?kd=高端职能职位">高端职位</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/position/search?kd=行政总监/经理">行政总监/经理</a>
							            										   	<a href="${ctx }/position/search?kd=财务总监/经理"	>财务总监/经理</a>
							            										   	<a href="${ctx }/position/search?kd=HRD/HRM">HRD/HRM</a>
							            										   	<a href="${ctx }/position/search?kd=CFO">CFO</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
							</div>
			<a class="subscribe" href="subscribe.html" target="_blank">订阅职位</a>
		</div>
        <div class="content">	
	        			<div id="search_box">
		<form  name="searchForm" action="${ctx }/position/search">
        <ul id="searchType">
        	<li data-searchtype="1" class="type_selected" name="datatype">职位</li>
        	<li data-searchtype="4">公司</li>
        	        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" name = "kd"  tabindex="1" value=""  placeholder="请输入职位名称，如：产品经理"  />
        <input type="hidden" name="spc" id="spcInput" value=""/>
        <input type="hidden" name="pl" id="plInput" value=""/>
        <input type="hidden" name="gj" id="gjInput" value=""/>
        <input type="hidden" name="xl" id="xlInput" value=""/>
        <input type="hidden" name="yx" id="yxInput" value=""/>
        <input type="hidden" name="gx" id="gxInput" value="" />
        <input type="hidden" name="st" id="stInput" value="" />
        <input type="hidden" name="labelWords" id="labelWords" value="" />
        <input type="hidden" name="lc" id="lc" value="" />
        <input type="hidden" name="workAddress" id="workAddress" value=""/>
                <input type="hidden" name="city" id="cityInput" value=""/>
                <input type="submit" id="search_button" value="搜索" onclick="searchclick()"/>
				
    </form>
</div>
<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<script type="text/javascript" src="style/js/search.min.js"></script>
<dl class="hotSearch">
	<dt>热门搜索：</dt>
	<dd><a href="${ctx }/position/search?kd=Java">Java</a></dd>
	<dd><a href="${ctx }/position/search?kd=PHP">PHP</a></dd>
	<dd><a href="${ctx }/position/search?kd=Android">Android</a></dd>
	<dd><a href="${ctx }/position/search?kd=iOS">iOS</a></dd>
	<dd><a href="${ctx }/position/searchtype?kd=前端">前端</a></dd>
	<dd><a href="${ctx }/position/search?kd=产品经理">产品经理</a></dd>
	<dd><a href="${ctx }/position/search?kd=UI">UI</a></dd>
	<dd><a href="${ctx }/position/search?kd=运营">运营</a></dd>
	<dd><a href="${ctx }/position/search?kd=BD">BD</a></dd>
	<dd><a href="${ctx }/position/search?kd=实习">实习</a></dd>
</dl>			
			<div id="home_banner">
	            <ul class="banner_bg">
	            		                <li  class="banner_bg_1 current" >
	                    <a href="h/subject/s_buyfundation.html?utm_source=DH__lagou&utm_medium=banner&utm_campaign=haomai" target="_blank"><img src="${ctx}/style/images/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg" width="612" height="160" alt="好买基金——来了就给100万" /></a>
	                </li>
	                	                <li  class="banner_bg_2" >
	                    <a href="h/subject/s_worldcup.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=wc" target="_blank"><img src="${ctx}/style/images/c9d8a0756d1442caa328adcf28a38857.jpg" width="612" height="160" alt="世界杯放假看球，老板我也要！" /></a>
	                </li>
	                	                <li  class="banner_bg_3" >
	                    <a href="h/subject/s_xiamen.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=xiamen" target="_blank"><img src="${ctx}/style/images/d03110162390422bb97cebc7fd2ab586.jpg" width="612" height="160" alt="出北京记——第一站厦门" /></a>
	                </li>
	                	            </ul>
	            <div class="banner_control">
	                <em></em> 
	                <ul class="thumbs">
	                		                    <li  class="thumbs_1 current" >
	                        <i></i>
	                        <img src="${ctx}/style/images/4469b1b83b1f46c7adec255c4b1e4802.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_2" >
	                        <i></i>
	                        <img src="${ctx}/style/images/381b343557774270a508206b3a725f39.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_3" >
	                        <i></i>
	                        <img src="${ctx}/style/images/354d445c5fd84f1990b91eb559677eb5.jpg" width="113" height="42" />
	                    </li>
	                    	                </ul>
	            </div>
	        </div><!--/#main_banner-->
			
        	<ul id="da-thumbs" class="da-thumbs">
	        		        		<li >
	                    <a href="h/c/1650.html" target="_blank">
	                        <img src="${ctx}/style/images/a254b11ecead45bda166afa8aaa9c8bc.jpg" width="113" height="113" alt="联想" />
	                        <div class="hot_info">
	                        	<h2 title="联想">联想</h2>
	                            <em></em>
	                            <p title="世界因联想更美好">
	                            	世界因联想更美好
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/9725.html" target="_blank">
	                        <img src="${ctx}/style/images/c75654bc2ab141df8218983cfe5c89f9.jpg" width="113" height="113" alt="淘米" />
	                        <div class="hot_info">
	                        	<h2 title="淘米">淘米</h2>
	                            <em></em>
	                            <p title="将心注入 追求极致">
	                            	将心注入 追求极致
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/1914.html" target="_blank">
	                        <img src="${ctx}/style/images/2bba2b71d0b0443eaea1774f7ee17c9f.png" width="113" height="113" alt="优酷土豆" />
	                        <div class="hot_info">
	                        	<h2 title="优酷土豆">优酷土豆</h2>
	                            <em></em>
	                            <p title="专注于视频领域，是中国网络视频行业领军企业">
	                            	专注于视频领域，是中国网络视频行业领军企业
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/6630.html" target="_blank">
	                        <img src="${ctx}/style/images/f4822a445a8b495ebad81fcfad3e40e2.jpg" width="113" height="113" alt="思特沃克" />
	                        <div class="hot_info">
	                        	<h2 title="思特沃克">思特沃克</h2>
	                            <em></em>
	                            <p title="一家全球信息技术服务公司">
	                            	一家全球信息技术服务公司
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/2700.html" target="_blank">
	                        <img src="${ctx}/style/images/5caf8f9631114bf990f87bb11360653e.png" width="113" height="113" alt="奇猫" />
	                        <div class="hot_info">
	                        	<h2 title="奇猫">奇猫</h2>
	                            <em></em>
	                            <p title="专注于移动互联网、互联网产品研发">
	                            	专注于移动互联网、互联网产品研发
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li  class="last" >
	                    <a href="h/c/1335.html" target="_blank">
	                        <img src="${ctx}/style/images/c0052c69ef4546c3b7d08366d0744974.jpg" width="113" height="113" alt="堆糖网" />
	                        <div class="hot_info">
	                        	<h2 title="堆糖网">堆糖网</h2>
	                            <em></em>
	                            <p title="分享收集生活中的美好，遇见世界上的另外一个你">
	                            	分享收集生活中的美好，遇见世界上的另外一个你
	                            </p>
	                        </div>
	                    </a>
	                </li>
                            </ul>
            
            <ul class="reset hotabbing">
            	            		<li class="current">热门职位</li>
            	            	<li>最新职位</li>
            </ul>
            <div id="hotList">
	            <ul class="hot_pos reset">
	            <c:if test="${positionpage != null }">
	            	<c:forEach items="${positionpage.list }" var="p" varStatus="loop">
		            	<li class="clearfix">
		            	<div class="hot_pos_l">
			                <div class="mb10">
			                    <a href="${ctx }/position/jobdetail?id=${p.id}&email=${company[loop.count-1].email }" target="_blank">${p.name }</a> 
			                            &nbsp;
			                    <span class="c9">[${p.city }]</span>
			                            			                        </div>
			                    <span><em class="c7">月薪： </em>${p.minSalary }k-${p.maxSalary }k</span>
			                    <span><em class="c7">经验：</em> ${p.experience }</span>
			                    <span><em class="c7">最低学历： </em>${p.degree }</span>
			                    <br />
			                    <span><em class="c7">职位诱惑：</em>${p.tempation }</span>
			                    <br />
				                <span>1天前发布</span>
			                    <!-- <a  class="wb">分享到微博</a> -->
			                </div>
			                <div class="hot_pos_r">
			                    <div class="mb10 recompany"><a href="${ctx}/company/companydetail?email=${company[loop.count-1].email }&id1=${email}" target="_blank">${company[loop.count-1].name }</a></div>
			                        <span><em class="c7">领域：</em> ${company[loop.count-1].industryfield }</span>
			                        <span><em class="c7">创始人：</em>陈桦</span>
			                        <br />
			                        <span><em class="c7">阶段：</em> ${company[loop.count-1].thefinancingstage }</span>
			                        <span><em class="c7">规模：</em>${company[loop.count-1].scale }</span>
			                        <ul class="companyTags reset">
			                        	<li>移动互联网</li>
			                        	<li>五险一金</li>
			                        	<li>扁平管理</li>
			                        </ul>
			                 </div>
			        </li>	
			        </c:forEach>
			        <c:if test="${positionpage != null }">
			        <div align="center" style="margin-top: 15px">
			        <a href="" class="numstyle1" href="${ctx }/position/index?pageNum=1"><font color="#fff">首页</font></a>
			        <a class="numstyle1" href="${ctx }/position/index?pageNum=${positionpage.prePageNum}" ><font color="#fff">上一页</font></a>
			        <c:if test="${positionpage.totalPageNum < 5}">
			        	<c:forEach  begin="1" end="${positionpage.totalPageNum }" var="num">
			        	<a class="numstyle1" href="${ctx }/position/index?pageNum=${num}"><font color="#fff">${num }</font></a>
			        	</c:forEach>
			        </c:if>
			        <c:if test="${positionpage.totalPageNum > 5}">
			        	<c:forEach  begin="1" end="5" var="num">
			        	<a class="numstyle1" href="${ctx }/position/index?pageNum=${num}"><font color="#fff">${num }</font></a>
			        	</c:forEach>
			        	<a class="numstyle1"><font color="#fff">...</font></a>
			        </c:if>
			        <a class="numstyle1" href="${ctx }/position/index?pageNum=${positionpage.nePageNum}" ><font color="#fff">下一页</font></a>
			        <a href="" class="numstyle1" href="${ctx }/position/index?pageNum=${positionpage.totalPageNum}"><font color="#fff">尾页</font></a>
		            </div>
		            </c:if>
		        </c:if>
		        <c:if test="${searchpositionpage != null }">
	            	<c:forEach items="${searchpositionpage.list }" var="p" varStatus="loop">
		            	<li class="clearfix">
		            	<div class="hot_pos_l">
			                <div class="mb10">
			                    <a href="${ctx }/position/jobdetail?id=${p.id}&email=${company[loop.count-1].email }" target="_blank">${p.name }</a> 
			                            &nbsp;
			                    <span class="c9">[${p.city }]</span>
			                            			                        </div>
			                    <span><em class="c7">月薪： </em>${p.minSalary }k-${p.maxSalary }k</span>
			                    <span><em class="c7">经验：</em> ${p.experience }</span>
			                    <span><em class="c7">最低学历： </em>${p.degree }</span>
			                    <br />
			                    <span><em class="c7">职位诱惑：</em>${p.tempation }</span>
			                    <br />
				                <span>1天前发布</span>
			                    <!-- <a  class="wb">分享到微博</a> -->
			                </div>
			                <div class="hot_pos_r">
			                    <div class="mb10 recompany"><a href="${ctx}/company/companydetail?email=${company[loop.count-1].email }&id1=${email}" target="_blank">${company[loop.count-1].name }</a></div>
			                        <span><em class="c7">领域：</em> ${company[loop.count-1].industryfield }</span>
			                        <span><em class="c7">创始人：</em>陈桦</span>
			                        <br />
			                        <span><em class="c7">阶段：</em> ${company[loop.count-1].thefinancingstage }</span>
			                        <span><em class="c7">规模：</em>${company[loop.count-1].scale }</span>
			                        <ul class="companyTags reset">
			                        	<li>移动互联网</li>
			                        	<li>五险一金</li>
			                        	<li>扁平管理</li>
			                        </ul>
			                 </div>
			        </li>
			        </c:forEach>
			        <div align="center" style="margin-top: 15px">	
			        <a href="" class="numstyle1" href="${ctx }/position/searchpage?pageNum=1&kd=${searchname}"><font color="#fff">首页</font></a>
			        <a class="numstyle1" href="${ctx }/position/searchpage?pageNum=${searchpositionpage.prePageNum}&kd=${searchname}" ><font color="#fff">上一页</font></a>
			        <c:if test="${searchpositionpage.totalPageNum < 5}">
			        	<c:forEach  begin="1" end="${searchpositionpage.totalPageNum }" var="num">
			        	<a class="numstyle1" href="${ctx }/position/searchpage?pageNum=${num}&kd=${searchname}"><font color="#fff">${num }</font></a>
			        	</c:forEach>
			        </c:if>
			        <c:if test="${searchpositionpage.totalPageNum > 5}">
			        	<c:forEach  begin="1" end="5" var="num">
			        	<a class="numstyle1" href="${ctx }/position/searchpage?pageNum=${num}&kd=${searchname}"><font color="#fff">${num }</font></a>
			        	</c:forEach>
			        	<a class="numstyle1" ><font color="#fff">...</font></a>
			        </c:if>
			        <a class="numstyle1" href="${ctx }/position/searchpage?pageNum=${searchpositionpage.nePageNum}&kd=${searchname}" ><font color="#fff">下一页</font></a>
			        <a href="" class="numstyle1" href="${ctx }/position/searchpage?pageNum=${searchpositionpage.totalPageNum}&kd=${searchname}"><font color="#fff">尾页</font></a>
		            </div>
		            
		            
		        </c:if>
		        <c:if test="${searchpositiontypepage != null }">
	            	<c:forEach items="${searchpositiontypepage.list }" var="p" varStatus="loop">
		            	<li class="clearfix">
		            	<div class="hot_pos_l">
			                <div class="mb10">
			                    <a href="${ctx }/position/jobdetail?id=${p.id}&email=${company[loop.count-1].email }" target="_blank">${p.name }</a> 
			                            &nbsp;
			                    <span class="c9">[${p.city }]</span>
			                            			                        </div>
			                    <span><em class="c7">月薪： </em>${p.minSalary }k-${p.maxSalary }k</span>
			                    <span><em class="c7">经验：</em> ${p.experience }</span>
			                    <span><em class="c7">最低学历： </em>${p.degree }</span>
			                    <br />
			                    <span><em class="c7">职位诱惑：</em>${p.tempation }</span>
			                    <br />
				                <span>1天前发布</span>
			                    <!-- <a  class="wb">分享到微博</a> -->
			                </div>
			                <div class="hot_pos_r">
			                    <div class="mb10 recompany"><a href="${ctx}/company/companydetail?email=${company[loop.count-1].email }&id1=${email}" target="_blank">${company[loop.count-1].name }</a></div>
			                        <span><em class="c7">领域：</em> ${company[loop.count-1].industryfield }</span>
			                        <span><em class="c7">创始人：</em>陈桦</span>
			                        <br />
			                        <span><em class="c7">阶段：</em> ${company[loop.count-1].thefinancingstage }</span>
			                        <span><em class="c7">规模：</em>${company[loop.count-1].scale }</span>
			                        <ul class="companyTags reset">
			                        	<li>移动互联网</li>
			                        	<li>五险一金</li>
			                        	<li>扁平管理</li>
			                        </ul>
			                 </div>
			        </li>
			        </c:forEach>	
			        <div align="center" style="margin-top: 15px">
			        <a href="" class="numstyle1" href="${ctx }/position/searchtypepage?pageNum=1&kd=${searchname}"><font color="#fff">首页</font></a>
			        <a class="numstyle1" href="${ctx }/position/searchtypepage?pageNum=${searchpositiontypepage.prePageNum}&kd=${searchname}" ><font color="#fff">上一页</font></a>
			        <c:if test="${searchpositiontypepage.totalPageNum < 5}">
			        	<c:forEach  begin="1" end="${searchpositiontypepage.totalPageNum }" var="num">
			        	<a class="numstyle1" href="${ctx }/position/searchtypepage?pageNum=${num}&kd=${searchname}"><font color="#fff">${num }</font></a>
			        	</c:forEach>
			        </c:if>
			        <c:if test="${searchpositiontypepage.totalPageNum > 5}">
			        	<c:forEach  begin="1" end="5" var="num">
			        	<a class="numstyle1" href="${ctx }/position/searchtypepage?pageNum=${num}&kd=${searchname}"><font color="#fff">${num }</font></a>
			        	</c:forEach>
			        	<a class="numstyle1"><font color="#fff">...</font></a>
			        </c:if>
			        <a class="numstyle1" href="${ctx }/position/searchtypepage?pageNum=${searchpositiontypepage.nePageNum}&kd=${searchname}" ><font color="#fff">下一页</font></a>
			        <a href="" class="numstyle1" href="${ctx }/position/searchtypepage?pageNum=${searchpositiontypepage.totalPageNum}&kd=${searchname}"><font color="#fff">尾页</font></a>
		            </div>
		        </c:if>
		        <c:if test="${searchpositiontypepage == null && positionpage == null && searchpositionpage == null }">
		        	<div align="center" style="margin-top: 80px">
	                	               		<span"><font size="15" color="#DDDDDD">暂时没找到相关的职位</font></span>
	                </div>
		        </c:if>
<!-- 	            	<a href="list.html?city=%E5%85%A8%E5%9B%BD" class="btn fr" target="_blank">查看更多</a> -->
	            </ul>
            </div>
            
            <div class="clear"></div>
			
        </div>	
 	    <input type="hidden" value="" name="userid" id="userid" />
 		<!-- <div id="qrSide"><a></a></div> -->
<!--  -->

<!-- <div id="loginToolBar">
	<div>
		<em></em>
		<img src="style/images/footbar_logo.png" width="138" height="45" />
		<span class="companycount"></span>
		<span class="positioncount"></span>
		<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
		<div class="right">
			<a href="register.jsp?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
		</div>
		<input type="hidden" id="cc" value="16002" />
		<input type="hidden" id="cp" value="96531" />
	</div>
</div>
 -->
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="h/reset.html" class="fr">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有奇迹才聘帐号？</div>
			<a href="register.jsp" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
		</div>
    </div><!--/#loginPop-->
</div>
<!------------------------------------- end ----------------------------------------->
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
			<a href="about.jsp" target="_blank" rel="nofollow">联系我们</a>
		    
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