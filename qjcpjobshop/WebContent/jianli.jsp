<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%> 
<%@ page import="java.text.*"%> 
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
<script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的简历-奇迹才聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="奇迹才聘网是互联网领域垂直招聘网站,互联网职业机会尽在奇迹才聘网">
<meta name="keywords" content="奇迹才聘,奇迹才聘网,奇迹才聘招聘 ,互联网招聘,奇迹才聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 奇迹才聘官网, 奇迹才聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var h =1;
function timenow() {
	
	value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>"
	$('#lastChangedTime').html("最后一次更新：<span>"+value+" </span>");
}
window.onload=function(){
	 
	value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>"
	$('#lastChangedTime').html("最后一次更新：<span>"+value+" </span>");
}
var ctx = "h";
console.log(1);
</script>
<link href="h/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<!-- <script src="style/js/additional-methods.js" type="text/javascript"></script> -->
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>

<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="h/">
    			<img width="229" height="43" alt="奇迹才聘招聘-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index.jsp">首页</a></li>
    			<li><a href="companylist.html">公司</a></li>
    			<li><a target="_blank" href="htoForum.html">职业预测</a></li>
    				    			<li class="current"><a rel="nofollow" href="jianli.html">我的简历</a></li>
	    						    		</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
            		<c:if test="${resume1.name != null }"><span>${resume1.name }&nbsp;</span> </c:if>
           			<c:if test="${resume1.name == null }"><span>&nbsp;</span> </c:if>
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                                	<dd><a rel="nofollow" href="jianli.html">我的简历</a></dd>
                	                	<dd><a href="collections.html">我收藏的职位</a></dd>
                	                	                	<dd class="btm"><a href="subscribe.html">我的订阅</a></dd>
                	<dd><a href="create.html">我要招人</a></dd>
                                                <dd><a href="accountBind.html">帐号设置</a></dd>
                                <dd class="logout"><a rel="nofollow" href="login.html">退出</a></dd>
            </dl>
                                    <div class="dn" id="noticeTip">
            	<span class="bot"></span>
				<span class="top"></span>
				<a target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
				<a class="closeNT" href="javascript:;"></a>
            </div>
                    </div>
    </div><!-- end #header -->
    <div id="container">
        
  		<div class="clearfix">
            <div class="content_l"		>
            	<div class="fl" id="resume_name">
	            	<div class="nameShow fl">
	            		<c:if test="${resume1.name != null }"><h1 title="我的简历">${resume1.name }的简历</h1></c:if>
	            		<c:if test="${resume1.name == null }"><h1 title="我的简历">我的简历</h1></c:if>
	            		<span class="rename">重命名</span> | <a target="_blank" href="h/resume/preview.html">预览</a>
            		</div>
            		<form class="fl dn" id="resumeNameForm">
            			<input type="text" value="${resume1.name }的简历" name="resumeName" class="nameEdit c9">	
            			<input type="submit" value="保存"> | <a target="_blank" href="h/resume/preview.html">预览</a>
            		</form>
            	</div><!--end #resume_name-->
            	<div class="fr c5" id="lastChangedTime">最后一次更新：<span>2014-07-01 15:14 </span></div><!--end #lastChangedTime-->
            	<div id="resumeScore">
            		<div class="score fl">
            			<canvas height="120" width="120" id="doughnutChartCanvas" style="width: 120px; height: 120px;"></canvas>
           				<div style="" class="scoreVal"><span>
           					<c:if test="${resume1 == null }">0</c:if>
           					<c:if test="${resume1 != null&&resume2 ==null }">15</c:if>
           					<c:if test="${resume1 != null&&resume2 != null }">
           						<c:if test="${resume3 == null }">30</c:if>
           						<c:if test="${resume3 != null }">
           							<c:if test="${resume4 == null }">45</c:if>
           							<c:if test="${resume4 != null }">
           								<c:if test="${resume5 == null }">60</c:if>
           								<c:if test="${resume5 !=null }">
           									<c:if test="${resume6 == null }">75</c:if>
           									<c:if test="${resume6 != null }">90</c:if>
           								</c:if>
           							</c:if>
           						</c:if>
           					</c:if>
           					</span>分</div>
            		</div>	
            		
            		<div class="which fl">
            			<div>工作经历最能体现自己的工作能力，且完善后才可投递简历哦！</div>
<!--             										       -->
						<c:if test="${resume2 == null }"><span rel="expectJob"><a>马上去完善</a></span></c:if>
						<c:if test="${resume2 != null&&resume3 == null }"><span rel="workExperience"><a>马上去完善</a></span></c:if>
						<c:if test="${resume2 != null&&resume3!=null }">
							<c:if test="${resume4==null }"><span rel="projectExperience"><a>马上去完善</a></span></c:if>
							<c:if test="${resume4!=null }">
								<c:if test="${resume5==null }"><span rel="educationalBackground"><a>马上去完善</a></span></c:if>
								<c:if test="${resume5!=null }">
									<span rel="selfDescription"><a>马上去完善</a></span>
								</c:if>
							</c:if>
						</c:if>
						
						
            										
					</div>
            	</div><!--end #resumeScore-->

            	<div class="profile_box" id="basicInfo">
            		<h2>基本信息</h2>
            		<span class="c_edit"></span>
            		<div class="basicShow">
            			  <c:if test="${resume1 == null }"><span>请添加基本信息<br></span></c:if>
            			<c:if test="${resume1 != null }"><span>${resume1.name } |  ${resume1.sex } |    ${resume1.topDegree } |  ${resume1.workYear }<br>
            			            			${resume1.tel} | ${user.email }<br>
            			</span></c:if>          			
            			</span>
<!--             			<div class="m_portrait"> -->
<!-- 	                    	<div></div> -->
<!-- 	                    	<img width="120" height="120" alt="jason" src="style/images/default_headpic.png"> -->
<!-- 	                    </div> -->
            		</div><!--end .basicShow-->

            		<div class="basicEdit dn">
            			
            			<form id="profileForm"  action="${ctx }/jianlis" method="post" onsubmit="timenow()">
						  <table>
						    <tbody><tr>
						      <td valign="top">
<!-- 						        <span class="redstar">*</span> -->
						      </td> 
						      <td>
						      	<c:if test="${resume1.name != null }"><input type="text" placeholder="${resume1.name }" name="name"></c:if>
						        <c:if test="${resume1.name == null }"><input type="text" placeholder="姓名" name="name"></c:if>
						      </td>
						      <td valign="top"></td> 
						      <td>
						          <ul class="profile_radio clearfix reset">
						            <li class="current">
						           	  	 男<em></em>
						              	<input type="radio" checked="checked" name="sex" value="男"> 
						            </li>
						            <li>
						            	  女<em></em>
						              	<input type="radio" name="sex" value="女"> 
						            </li>
						          </ul>  
						      </td>
						    </tr>
						    <tr>
						      <td valign="top">
<!-- 						        <span class="redstar">*</span> -->
						      </td> 
						      <td>
						      	<input type="hidden" id="topDegree" name="topDegree">
						        <input type="button" id="select_topDegree" class="profile_select_190 profile_select_normal">
								<div class="boxUpDown boxUpDown_190 dn" id="box_topDegree" style="display: none;">
						        	<ul>
						        								        			<li>大专</li>
						        								        			<li>本科</li>
						        								        			<li>硕士</li>
						        								        			<li>博士</li>
						        								        			<li>其他</li>
						        								        	</ul>
						        </div>  
						      </td>
						      <td valign="top">
<!-- 						        <span class="redstar">*</span> -->
						      </td> 
						      <td>
						      	  <c:if test="${resume1.workYear != null }"><input type="hidden" id="workyear" value="123" name="workYear"></c:if>
						      	  <c:if test="${resume1.workYear == null }"><input type="hidden" id="workyear" value="123" name="workYear"></c:if>
						          
						          <input type="button" value="" id="select_workyear" class="profile_select_190 profile_select_normal">
								  <div class="boxUpDown boxUpDown_190 dn" id="box_workyear" style="display: none;">
						          	 <ul>
						        								        			<li>应届毕业生</li>
						        								        			<li>1年</li>
						        								        			<li>2年</li>
						        								        			<li>3年</li>
						        								        			<li>4年</li>
						        								        			<li>5年</li>
						        								        			<li>6年</li>
						        								        			<li>7年</li>
						        								        			<li>8年</li>
						        								        			<li>9年</li>
						        								        			<li>10年</li>
						        								        			<li>10年以上</li>
						        								        	 </ul>
						          </div>  
						      </td>
						    </tr>
						    <tr>
						      <td valign="top">
<!-- 						        <span class="redstar">*</span> -->
						      </td> 
						      <td colspan="3">
						       	  <c:if test="${resume1.tel != null }"><input type="text" placeholder="${resume1.tel }" name="tel" ></c:if>
						      	  <c:if test="${resume1.tel == null }"><input type="text" placeholder="手机号码" name="tel" ></c:if>
						          
						      </td>
						   	</tr>
						   	<tr>
						      <td valign="top">
<!-- 						        <span class="redstar">*</span> -->
						      </td> 
						      <td colspan="3">
						      	  <c:if test="${user.email != null }"><input type="text" placeholder=${user.email } name="email"></c:if>
						      	  <c:if test="${user.email == null }"><input type="text" placeholder="接收面试通知的邮箱" name="email"></c:if>
						          
						      </td>
						    </tr>
						    <tr>
						      <td valign="top"> </td> 
						      <td colspan="3">
						      	  <input type="hidden" id="currentState" value="" name="currentState">
						          
						          <c:if test="${resume1.currentState != null }"><input type="button" value="${resume1.currentState }" id="select_currentState" class="profile_select_410 profile_select_normal"></c:if>
						      	  <c:if test="${resume1.currentState == null }"><input type="button" value="目前状态" id="select_currentState" class="profile_select_410 profile_select_normal"></c:if>
						          
								  <div class="boxUpDown boxUpDown_410 dn" id="box_currentState" style="display: none;">
						          	  <ul>
						        								        			<li>我目前已离职，可快速到岗</li>
						        								        			<li>我目前正在职，正考虑换个新环境</li>
						        								        			<li>我暂时不想找工作</li>
						        								        			<li>我是应届毕业生</li>
						        								        	  </ul>
						          </div>  
						      </td>
						    </tr>
						    <tr>
						      <td></td> 
						      <td colspan="3">
						          <input type="submit" value="保 存" class="btn_profile_save">
						          <a class="btn_profile_cancel" href="javascript:;">取 消</a>
						      </td>
						    </tr>
						  </tbody></table>
						</form><!--end #profileForm-->
<!-- 						<div class="new_portrait"> -->
<!-- 						  <div class="portrait_upload" id="portraitNo"> -->
<!-- 						      <span>上传自己的头像</span> -->
<!-- 						  </div> -->
<!-- 						  <div class="portraitShow dn" id="portraitShow"> -->
<!-- 						  	<form action="FileUpLoadServlet" enctype="multipart/form-data" method="post"> -->
<!-- 								<input type="file" name="upfile"/> -->
<!-- 								<img width="120" height="120" src=""> -->
								
<!-- 							</form> -->
						    
<!-- 						    <span>更换头像</span> -->
<!-- 						  </div> -->
<!-- 						  <input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="img_check(this,'h/resume/uploadPhoto.json','headPic');" name="headPic" id="headPic" class="myfiles"> -->
							<!-- <input type="hidden" id="headPicHidden" /> -->
<!-- 						  	<em> -->
<!-- 						                  尺寸：120*120px <br>    -->
<!-- 						                  大小：小于5M -->
<!-- 						  	</em> -->
<!-- 						  	<span style="display:none;" id="headPic_error" class="error"></span> -->
<!-- 						</div>end .new_portrait -->
            		</div><!--end .basicEdit-->
            		<input type="hidden" id="nameVal" value="jason">
            		<input type="hidden" id="genderVal" value="男">
            		<input type="hidden" id="topDegreeVal" value="大专">
            		<input type="hidden" id="workyearVal" value="3年">
            		<input type="hidden" id="currentStateVal" value="">
            		<input type="hidden" id="emailVal" value="jason@qq.com">
            		<input type="hidden" id="telVal" value="18644444444">
            		<input type="hidden" id="pageType" value="1"> 
            	</div><!--end #basicInfo-->

            	<div class="profile_box" id="expectJob">
            		<h2>期望工作</h2>
            		            		<span class="c_edit dn"></span>
            		<div class="expectShow dn">
            		            			<span></span>
            		</div><!--end .expectShow-->
            		<div class="expectEdit dn">
            			<form id="expectForm" action="${ctx }/jianlis" method="post">
	            			<table>
	            				<tbody><tr>
	            					<td>
	            						
						      	  		<input type="hidden" id="expectCity" value="" name="expectCity">
	            																 <c:if test="${resume2.expectCity != null }"><input type="button" value="${resume2.expectCity }" id="select_expectCity" class="profile_select_287 profile_select_normal"></c:if>
						      	  												<c:if test="${resume2.expectCity == null }"><input type="button" value="期望城市，如：北京" id="select_expectCity" class="profile_select_287 profile_select_normal"></c:if>
	            													        	
																				<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity" style="display: none;">
								          									        		<dl>
								        			<dt>热门城市</dt>
								        			<dd>
									        												        				<span>北京</span>
									        												        				<span>上海</span>
									        												        				<span>广州</span>
									        												        				<span>深圳</span>
									        												        				<span>成都</span>
									        												        				<span>杭州</span>
									        											        			</dd>
								        	  	</dl>
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
								        									        </div>  
	            					</td>
	            					<td>
	            						<ul class="profile_radio clearfix reset">
	            								            								<li class="current">
									             	 全职<em></em>
									              	<input type="radio" checked="" name="type" value="全职"> 
									            </li>
									            <li>
									              	兼职<em></em>
									              	<input type="radio" name="type" value="兼职"> 
									            </li>
									            <li>
									            	  实习<em></em>
									              	<input type="radio" name="type" value="实习"> 
									            </li>
								            								        </ul> 
	            					</td>
	            				</tr>
	            				<tr>
	            					<td>
	            						<c:if test="${resume2.expectPosition != null }"><input type="text" placeholder="期望职位，如：产品经理" value="${resume2.expectPosition }" name="expectPosition" id="expectPosition"></c:if>
						      	  		<c:if test="${resume2.expectPosition == null }"><input type="text" placeholder="期望职位，如：产品经理" value="" name="expectPosition" id="expectPosition"></c:if>
							        	
									</td>
	            					<td>
	            						<input type="hidden" id="expectSalary" value="" name="expectSalary">
	            																<c:if test="${resume2.expectSalary != null }"><input type="button" value="${resume2.expectSalary }" id="select_expectSalary" class="profile_select_287 profile_select_normal"></c:if>
						      	  												<c:if test="${resume2.expectSalary == null }"><input type="button" value="期望月薪" id="select_expectSalary" class="profile_select_287 profile_select_normal"></c:if>
	            							            						
	            													        	<div class="boxUpDown boxUpDown_287 dn" id="box_expectSalary" style="display: none;">
								          	  <ul>
								        										        			<li>2k以下</li>
								        										        			<li>2k-5k</li>
								        										        			<li>5k-10k</li>
								        										        			<li>10k-15k</li>
								        										        			<li>15k-25k</li>
								        										        			<li>25k-50k</li>
								        										        			<li>50k以上</li>
								        										        	  </ul>
								         </div>  
	            					</td>
	            				</tr>
	            				<tr>
	            					<td colspan="2">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
            			</form><!--end #expectForm-->
            		</div><!--end .expectEdit-->
            		            		<div class="expectAdd pAdd">
            		            			<c:if test="${resume2 != null }">
            		            				${resume2.expectCity } |  ${resume2.type } <br>${resume2.expectPosition } |  ${resume2.expectSalary }
            			            			
            									
            									<span>修改</span>
            		            			</c:if>
            		            			<c:if test="${resume2 == null }">
            		            				填写准确的期望工作能大大 提高求职成功率哦…<br>
												快来添加期望工作吧！
												<span>添加期望工作</span>
            		            			</c:if>
            		            			
            		</div><!--end .expectAdd-->
            		
            		<input type="hidden" id="expectJobVal" value="">
            		<input type="hidden" id="expectCityVal" value="">
            		<input type="hidden" id="typeVal" value="">
            		<input type="hidden" id="expectPositionVal" value="">
            		<input type="hidden" id="expectSalaryVal" value="">
            	</div><!--end #expectJob-->
            		
            	<div class="profile_box" id="workExperience">
            		<h2>工作经历  <span> （投递简历时必填）</span></h2>
            		            		<span class="c_add dn"></span>
            		<div class="experienceShow dn">
            		            			<form class="experienceForm borderBtm dn" action="${ctx }/jianlis" method="post">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							        	<c:if test="${resume3.companyName != null }">
							      	    	<input type="text" placeholder="${resume3.companyName }" name="companyName" class="companyName">
							      	    </c:if>
							      	    <c:if test="${resume3.companyName == null }">
							      	    	<input type="text" placeholder="公司名称" name="companyName" class="companyName">
							      	    </c:if>
							      	</td>
							      	<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							      		<c:if test="${resume3.positionName == null }">
							      	    	<input type="text" placeholder="职位名称，如：产品经理" name="positionName" class="positionName">
							      	    </c:if>
							      		<c:if test="${resume3.positionName != null }">
							      	    	<input type="text" placeholder="${resume3.positionName }" name="positionName" class="positionName">
							      	    </c:if>
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearStart" value="" name="companyYearStart">
		            						<c:if test="${resume3.companyYearStart != null }"><input type="button" value="${resume3.companyYearStart }" class="profile_select_139 profile_select_normal select_companyYearStart"></c:if>
						      	  			<c:if test="${resume3.companyYearStart == null }"><input type="button" value="123" class="profile_select_139 profile_select_normal select_companyYearStart"></c:if>
								        	
											<div class=" boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthStart" value="" name="companyMonthStart">
		            						<c:if test="${resume3 != null }"><input type="button" value="${resume3.companyMonthStart }" class="profile_select_139 profile_select_normal select_companyMonthStart"></c:if>
						      	  			<c:if test="${resume3 == null }"><input type="button" value="开始月份" class="profile_select_139 profile_select_normal select_companyMonthStart"></c:if>
									        
								        	
											<div style="display: none;" class="box_companyMonthStart boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
									    </div>
									    <div class="clear"></div>
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearEnd" value="" name="companyYearEnd">
		            						<c:if test="${resume3 != null }"><input type="button" value="${resume3.companyYearEnd }" class="profile_select_139 profile_select_normal select_companyYearEnd"></c:if>
						      	  			<c:if test="${resume3 == null }"><input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_companyYearEnd"></c:if>
								        	
											<div class="box_companyYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>至今</li>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthEnd" value="" name="companyMonthEnd">
									        <c:if test="${resume3 != null }"><input type="button" value="${resume3.companyMonthEnd }" class="profile_select_139 profile_select_normal select_companyMonthEnd"></c:if>
						      	  			<c:if test="${resume3 == null }"><input type="button" value="结束月份" class="profile_select_139 profile_select_normal select_companyMonthEnd"></c:if>
								        	
											<div style="display: none;" class="box_companyMonthEnd boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
								        <div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="expId" value="">
            			</form><!--end .experienceForm-->
            			
            			<ul class="wlist clearfix">
            				            				            			</ul>
            		</div><!--end .experienceShow-->
            		<div class="experienceEdit dn">
            			<form class="experienceForm" action="${ctx }/jianlis" method="post">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							      	    <c:if test="${resume3.companyName != null }">
							      	    	<input type="text" placeholder="${resume3.companyName }" name="companyName" class="companyName">
							      	    </c:if>
							      	    <c:if test="${resume3.companyName == null }">
							      	    	<input type="text" placeholder="公司名称" name="companyName" class="companyName">
							      	    </c:if>
							        	
							      	</td>
							      	<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							      		
										<c:if test="${resume3.positionName != null }"><input type="text" placeholder="${resume3.positionName }" name="positionName" class="positionName"></c:if>
										<c:if test="${resume3.positionName == null }"><input type="text" placeholder="职位名称，如：产品经理" name="positionName" class="positionName"></c:if>
							          	
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearStart" value="" name="companyYearStart">
		            						<c:if test="${resume3 != null }"><input type="button" value="${resume3.companyYearStart }" class="profile_select_139 profile_select_normal select_companyYearStart"></c:if>
						      	  			<c:if test="${resume3 == null }"><input type="button" value="123" class="profile_select_139 profile_select_normal select_companyYearStart"></c:if>
											<div class="box_companyYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthStart" value="" name="companyMonthStart">
									        <c:if test="${resume3 != null }"><input type="button" value="${resume3.companyMonthStart }" class="profile_select_139 profile_select_normal select_companyMonthStart"></c:if>
						      	  			<c:if test="${resume3 == null }"><input type="button" value="开始月份" class="profile_select_139 profile_select_normal select_companyMonthStart"></c:if>
<!-- 								        	<input type="button" value="开始月份" class="profile_select_139 profile_select_normal select_companyMonthStart"> -->
											<div style="display: none;" class="box_companyMonthStart boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
									    </div>
									    <div class="clear"></div>
	            					</td>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearEnd" value="" name="companyYearEnd">
		            						<c:if test="${resume3 != null }"><input type="button" value="${resume3.companyYearEnd }" class="profile_select_139 profile_select_normal select_companyYearEnd"></c:if>
						      	  			<c:if test="${resume3 == null }"><input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_companyYearEnd"></c:if>
<!-- 								        	<input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_companyYearEnd"> -->
											<div class="box_companyYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>至今</li>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthEnd" value="" name="companyMonthEnd">
									        <c:if test="${resume3 != null }"><input type="button" value="${resume3.companyMonthEnd }" class="profile_select_139 profile_select_normal select_companyMonthEnd"></c:if>
						      	  			<c:if test="${resume3 == null }"><input type="button" value="结束月份" class="profile_select_139 profile_select_normal select_companyMonthEnd"></c:if>
<!-- 								        	<input type="button" value="结束月份" class="profile_select_139 profile_select_normal select_companyMonthEnd"> -->
											<div style="display: none;" class="box_companyMonthEnd boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
								        <div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="expId" value="">
            			</form><!--end .experienceForm-->
            		</div><!--end .experienceEdit-->
            		
            		            		<div class="experienceAdd pAdd">
            		            			<c:if test="${resume3 != null }">
            		            				${resume3.companyName }|${resume3.positionName }<br>
            		            				${resume3.companyYearStart }年${resume3.companyMonthStart }月-${resume3.companyYearEnd }年${resume3.companyMonthEnd }月
            		            			<span>修改</span>
            		            			</c:if>
            		            			<c:if test="${resume3 == null }">
            		            				工作经历最能体现自己的工作能力，<br>
												且完善后才可投递简历哦！
												<span>添加工作经历</span>
            		            			</c:if>
            		            			
            		</div><!--end .experienceAdd-->
            	</div><!--end #workExperience-->

            	<div class="profile_box" id="projectExperience">
            		<h2>项目经验</h2>
            		            		<span class="c_add dn"></span>
            		<div class="projectShow dn">
            		            			<ul class="plist clearfix">
	            			            			</ul>
            		</div><!--end .projectShow-->
            		<div class="projectEdit dn">
            			<form class="projectForm" action="${ctx }/jianlis" method="post">
	            			<table>
	            				<tbody><tr>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							      		<c:if test="${resume4.projectName != null }"><input type="text" placeholder="${resume4.projectName }" name="projectName" class="projectName"></c:if>
						      	  		<c:if test="${resume4.projectName == null }"><input type="text" placeholder="项目名称" name="projectName" class="projectName"></c:if>
							        	
							      	</td>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							      		<c:if test="${resume4.thePost != null }"><input type="text" placeholder="${resume4.thePost }" name="thePost" class="thePost"></c:if>
						      	  		<c:if test="${resume4.thePost == null }"><input type="text" placeholder="担任职务，如：产品负责人" name="thePost" class="thePost"></c:if>
<!-- 							          	<input type="text" placeholder="担任职务，如：产品负责人" name="thePost" class="thePost"> -->
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="projectYearStart" value="" name="projectYearStart">
		            						<c:if test="${resume4.projectYearStart != null }"><input type="button" value="${resume4.projectYearStart }" class="profile_select_139 profile_select_normal select_projectYearStart"></c:if>
						      	  			<c:if test="${resume4.projectYearStart == null }"><input type="button" value="开始年份" class="profile_select_139 profile_select_normal select_projectYearStart"></c:if>
								        	
											<div class="box_projectYearStart  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="projectMonthStart" value="" name="projectMonthStart">
									        <c:if test="${resume4.projectMonthStart != null }"><input type="button" value="${resume4.projectMonthStart }" class="profile_select_139 profile_select_normal select_projectMonthStart"></c:if>
						      	  			<c:if test="${resume4.projectMonthStart == null }"><input type="button" value="开始月份" class="profile_select_139 profile_select_normal select_projectMonthStart"></c:if>
								        	
											<div style="display: none;" class="box_projectMonthStart boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
								        <div class="clear"></div>
	            					</td>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
	            						<div class="fl">
		            						<input type="hidden" class="projectYearEnd" value="" name="projectYearEnd">
		            						<c:if test="${resume4.projectYearEnd != null }"><input type="button" value="${resume4.projectYearEnd }" class="profile_select_139 profile_select_normal select_projectYearEnd"></c:if>
						      	  			<c:if test="${resume4.projectYearEnd == null }"><input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_projectYearEnd"></c:if>
								        	
											<div class="box_projectYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>至今</li>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="projectMonthEnd" value="" name="projectMonthEnd">
									        <c:if test="${resume4.projectMonthEnd != null }"><input type="button" value="${resume4.projectMonthEnd }" class="profile_select_139 profile_select_normal select_projectMonthEnd"></c:if>
						      	  			<c:if test="${resume4.projectMonthEnd == null }"><input type="button" value="结束月份" class="profile_select_139 profile_select_normal select_projectMonthEnd"></c:if>
<!-- 								        	<input type="button" value="结束月份" class="profile_select_139 profile_select_normal select_projectMonthEnd"> -->
											<div style="display: none;" class="box_projectMonthEnd boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
<!-- 								        <div class="clear"></div> -->
	            					</td>
	            				</tr>
	            				<tr>
	            					<td valign="top"></td> 
									<td colspan="3">
										<c:if test="${resume4.projectDescription != null }"><textarea class="projectDescription s_textarea" name="projectDescription" placeholder="">${resume4.projectDescription }</textarea></c:if>
						      	  		<c:if test="${resume4.projectDescription == null }"><textarea class="projectDescription s_textarea" name="projectDescription" placeholder="项目描述"></textarea></c:if>
										
										<div class="word_count">你还可以输入 <span>500</span> 字</div>
									</td>
	            				</tr>
	            				<!-- <tr>
									<td colspan="2">
										<textarea placeholder="职责描述" name="ResponsDescription" class="ResponsDescription s_textarea"></textarea>
										<div class="word_count">你还可以输入 <span>500</span> 字</div>
									</td>
	            				</tr> -->
	            				<tr>
	            					<td valign="top"></td> 
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
			            	<input type="hidden" value="" class="projectId">
            			</form><!--end .projectForm-->
            		</div><!--end .projectEdit-->
            		            		<div class="projectAdd pAdd">
            		            			<c:if test="${resume4 != null }">
            		            				${resume4.projectName }|${resume4.thePost }<br>
            		            				${resume4.projectYearStart }年${resume4.projectMonthStart }月-${resume4.projectYearEnd }年${resume4.projectMonthEnd }月
            		            				<span>修改</span>
            		            			</c:if>
            		            			<c:if test="${resume4 == null }">
            		            				项目经验是用人单位衡量人才能力的重要指标哦！<br>
												来说说让你难忘的项目吧！
												<span>添加项目经验</span>
            		            			</c:if>
            		            			
            		</div><!--end .projectAdd-->
            	</div><!--end #projectExperience-->

            	<div class="profile_box" id="educationalBackground">
            		<h2>教育背景<span>（投递简历时必填）</span></h2>
            							<span class="c_add dn"></span>
            		<div class="educationalShow dn" action="${ctx }/jianlis" method="post">
            		            			<form class="educationalForm borderBtm dn" action="${ctx }/jianlis" method="post">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							      		
							      		<c:if test="${resume5.schoolName != null }"><input type="text" placeholder="${resume5.schoolName }" name="schoolName" class="schoolName"></c:if>
						      	  		<c:if test="${resume5.schoolName == null }"><input type="text" placeholder="学校名称" name="schoolName" class="schoolName"></c:if>
							        	
							      	</td>
							      	<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							      		<input type="hidden" class="degree" value="" name="degree">
							      		<c:if test="${resume5.degree != null }"><input type="button" value="${resume5.degree }" class="profile_select_287 profile_select_normal select_degree"></c:if>
						      	  		<c:if test="${resume5.degree == null }"><input type="button" value="学历" class="profile_select_287 profile_select_normal select_degree"></c:if>
							        	
										<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
								            <ul>
								        										        			<li>大专</li>
								        										        			<li>本科</li>
								        										        			<li>硕士</li>
								        										        			<li>博士</li>
								        										        			<li>其他</li>
								        										        	</ul>
								        </div>
							        </td>
							    </tr>
	            				<tr>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
	            						<c:if test="${resume5.professionalName != null }"><input type="text" placeholder="${resume5.professionalName }" name="professionalName" class="professionalName"></c:if>
						      	  		<c:if test="${resume5.professionalName == null }"><input type="text" placeholder="专业名称" name="professionalName" class="professionalName"></c:if>
	            						
	            					</td>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="schoolYearStart" value="" name="schoolYearStart">
		            						<c:if test="${resume5.schoolYearStart != null }"><input type="button" value="${resume5.schoolYearStart }" class="profile_select_139 profile_select_normal select_schoolYearStart"></c:if>
						      	  			<c:if test="${resume5.schoolYearStart == null }"><input type="button" value="开始年份" class="profile_select_139 profile_select_normal select_schoolYearStart"></c:if>
								        	
											<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
		            						<input type="hidden" class="schoolYearEnd" value="" name="schoolYearEnd">
		            						<c:if test="${resume5.schoolYearEnd != null }"><input type="button" value="${resume5.schoolYearEnd }" class="profile_select_139 profile_select_normal select_schoolYearEnd"></c:if>
						      	  			<c:if test="${resume5.schoolYearEnd == null }"><input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_schoolYearEnd"></c:if>
								        	
											<div style="display: none;" class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn">
									            <ul>
									        											        			<li>2021</li>
									        											        			<li>2020</li>
									        											        			<li>2019</li>
									        											        			<li>2018</li>
									        											        			<li>2017</li>
									        											        			<li>2016</li>
									        											        			<li>2015</li>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
	            						</div>
	            						<div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="eduId" value="">
            			</form><!--end .educationalForm-->

            			<ul class="elist clearfix">
            					            			            			</ul>
            		</div><!--end .educationalShow-->
            		<div class="educationalEdit dn">
            			<form class="educationalForm" action="${ctx }/jianlis" method="post">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
			
							      	    <c:if test="${resume5.schoolName != null }"><input type="text" placeholder="${resume5.schoolName }" name="schoolName" class="schoolName"></c:if>
							      	    <c:if test="${resume5.schoolName == null }"><input type="text" placeholder="学校名称" name="schoolName" class="schoolName"></c:if>
							        	
							      	</td>
							      	<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
							      	<td>
							      		<input type="hidden" class="degree" value="" name="degree">
							      		<c:if test="${resume5.degree != null }"><input type="button" value="${resume5.degree }" class="profile_select_287 profile_select_normal select_degree"></c:if>
							      	    <c:if test="${resume5.degree == null }"><input type="button" value="学历" class="profile_select_287 profile_select_normal select_degree"></c:if>
							        	
										<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
								            <ul>
								        										        			<li>大专</li>
								        										        			<li>本科</li>
								        										        			<li>硕士</li>
								        										        			<li>博士</li>
								        										        			<li>其他</li>
								        										        	</ul>
								        </div>
							        </td>
							    </tr>
	            				<tr>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
	            						<c:if test="${resume5.professionalName != null }"><input type="text" placeholder="${resume5.professionalName }" name="professionalName" class="professionalName"></c:if>
							      	    <c:if test="${resume5.professionalName == null }"><input type="text" placeholder="专业名称" name="professionalName" class="professionalName"></c:if>
	            						
	            					</td>
	            					<td valign="top">
<!-- 							        	<span class="redstar">*</span> -->
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="schoolYearStart" value="" name="schoolYearStart">
								        	<c:if test="${resume5.schoolYearStart != null }"><input type="button" value="${resume5.schoolYearStart }" class="profile_select_139 profile_select_normal select_schoolYearStart"></c:if>
						      	  			<c:if test="${resume5.schoolYearStart == null }"><input type="button" value="开始年份" class="profile_select_139 profile_select_normal select_schoolYearStart"></c:if>
											<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
		            						<input type="hidden" class="schoolYearEnd" value="" name="schoolYearEnd">
								        	<c:if test="${resume5.schoolYearEnd != null }"><input type="button" value="${resume5.schoolYearEnd }" class="profile_select_139 profile_select_normal select_schoolYearEnd"></c:if>
						      	  			<c:if test="${resume5.schoolYearEnd == null }"><input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_schoolYearEnd"></c:if>
											<div class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
	            						</div>
	            						<div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="eduId" value="">
            			</form><!--end .educationalForm-->
            		</div><!--end .educationalEdit-->
            		            		<div class="educationalAdd pAdd">
            		            			<c:if test="${resume5 != null }">
            		            				${resume5.schoolName }|${resume5.degree }|${resume5.professionalName }<br>
            		            				${resume5.schoolYearStart }年-${resume5.schoolYearEnd }年
            		            				<span>修改</span>
            		            			</c:if>
            		            			<c:if test="${resume5 == null }">
            		            				教育背景可以充分体现你的学习和专业能力，<br>
												且完善后才可投递简历哦！
												<span>添加教育经历</span>
            		            			</c:if>
            		            			
            		</div><!--end .educationalAdd-->
            	</div><!--end #educationalBackground-->

            	<div class="profile_box" id="selfDescription">
            		<h2>自我描述</h2>
            		            		<span class="c_edit dn"></span>
            		<div class="descriptionShow dn">
            		            			
            		</div><!--end .descriptionShow-->
            		<div class="descriptionEdit dn">
            			<form  action="${ctx }/jianlis" method="post">
	            			<table>
	            				<tbody><tr>
									<td colspan="2">
										<c:if test="${resume6.selfDescription != null }"><textarea class="" name="selfDescription" placeholder="">${resume6.selfDescription }</textarea></c:if>
						      	  		<c:if test="${resume6.selfDescription == null }"><textarea class="selfDescription s_textarea" name="selfDescription" placeholder=""></textarea></c:if>
										
										<div class="word_count">你还可以输入 <span>500</span> 字</div>
									</td>
	            				</tr>
	            				<tr>
	            					<td colspan="2">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
            			</form><!--end .descriptionForm-->
            		</div><!--end .descriptionEdit-->
            		            		<div class="descriptionAdd pAdd">
            		            		<c:if test="${resume6 != null }">
            		            			${resume6.selfDescription }<br>
            		            			<span>修改</span>
            		            		</c:if>
            		            		<c:if test="${resume6 == null }">
            		            			描述你的性格、爱好以及吸引人的经历等，<br>
											让企业了解多元化的你！
											<span>添加自我描述</span>
            		            		</c:if>
            		            			
            		</div><!--end .descriptionAdd-->
            	</div><!--end #selfDescription-->

            	<!--end .workAdd-->
            	<!--end #worksShow-->
				<input type="hidden" id="resumeId" value="268472">
            </div><!--end .content_l-->
            <div class="content_r">
            	<div class="mycenterR" id="myInfo">
            		<h2>我的信息</h2>
            		<a target="_blank" href="collections.html">我收藏的职位</a>
            		<br>
            		            		            		<a target="_blank" href="subscribe.html">我订阅的职位</a>
            	</div><!--end #myInfo-->

				<div class="mycenterR" id="myResume">
            		<h2>我的附件简历 
            			<a title="上传附件简历" href="#uploadFile" class="inline cboxElement">上传简历</a>
            		</h2>
            		<c:if test="${resumsrc != null }">
            			<a href="NewFile.jsp"  target="_blank">查看我的附件简历</a>
            		</c:if>	 
            		<c:if test="${resumsrc == null }">
            			<div class="resumeUploadDiv">
	            			暂无附件简历
	            		</div>
            		</c:if>           			
					
            		
            	</div><!--end #myResume-->

            	<div class="mycenterR" id="resumeSet">
            		<h2>投递简历设置  <span>修改设置</span></h2>
            		<!-- -1 (0=附件， 1=在线， 其他=未设置) -->
            		            		            			<div class="noSet set0 dn">默认使用<span>附件简历</span>进行投递</div>
            			<div class="noSet set1 dn">默认使用<span>在线简历</span>进行投递</div>
						<div class="noSet">暂未设置默认投递简历</div>
            		            		<input type="hidden" class="defaultResume" value="-1">
            		<form class="dn" id="resumeSetForm">
	            		<label><input type="radio" value="1" class="resume1" name="resume">默认使用<span>在线简历</span>进行投递</label>
	            		<label><input type="radio" value="0" class="resume0" name="resume">默认使用<span>附件简历</span>进行投递</label>
	            		<span class="setTip error"></span>
	            		<div class="resumeTip">设置后投递简历时将不再提醒</div>
	            		<input type="submit" value="保 存" class="btn_profile_save">
						<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            	</form>
            	</div><!--end #resumeSet-->
				
				<div class="mycenterR" id="myShare">
            		<h2>当前每日投递量：10个</h2>
            		<a target="_blank" href="h/share/invite.html">邀请好友，提升投递量</a>
            	</div><!--end #myShare-->
            	
								
				<div class="greybg qrcode mt20">
                	<img width="242" height="242" alt="奇迹才聘微信公众号二维码" src="style/images/qr_resume.png">
                    <span class="c7">微信扫一扫，轻松找工作</span>
                </div>
            </div><!--end .content_r-->
        </div>
        
      <input type="hidden" id="userid" name="userid" value="314873">

<!-------------------------------------弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!-- 上传简历 -->
	<div class="popup" id="uploadFile">
	    <table width="100%">
	    	<tbody><tr>
	        	<td align="center">
	                <form action="${ctx }/fileUpload" enctype="multipart/form-data" method="post">
								<input type="file" name="file"/>
								
								<input type="submit"/>
					</form>
	            </td>
	        </tr>
	    	<tr>
	        	<td align="left">支持word、pdf、ppt、txt、wps格式文件<br>文件大小需小于10M</td>
	        </tr>
	        <tr>
	        	<td align="left" style="color:#dd4a38; padding-top:10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
	        </tr>
	    	<tr>
	        	<td align="center"><img width="55" height="16" alt="loading" style="visibility: hidden;" id="loadingImg" src="style/images/loading.gif"></td>
	        </tr>
	    </tbody></table>
	</div><!--/#uploadFile-->
	
	<!-- 简历上传成功 -->
	<div class="popup" id="uploadFileSuccess">
     	<h4>简历上传成功！</h4>
         <table width="100%">
             <tbody><tr>
                 <td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
             </tr>
         	<tr>
             	<td align="center"><a class="btn_s" href="javascript:;">确&nbsp;定</a></td>
             </tr>
         </tbody></table>
     </div><!--/#uploadFileSuccess-->
     
	<!-- 没有简历请上传 -->
    <div class="popup" id="deliverResumesNo">
        <table width="100%">
            <tbody><tr>
                <td align="center"><p class="font_16">你在奇迹才聘还没有简历，请先上传一份</p></td>
            </tr>
        	<tr>
            	<td align="center">
                    <form action="FileUpLoad" enctype="multipart/form-data" method="post">
                        
                        	<span>选择上传文件</span>
                        	<input type="file" name="upfile"/>
                        	
                        
                        <input type="submit" width=10px; height=10px;>
                    </form>
                </td>
            </tr> 
        	
        </tbody></table>
    </div><!--/#deliverResumesNo-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUpload">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">请上传标准格式的word简历</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		操作说明：<br>
                		打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#fileResumeUpload-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUploadSize">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">上传文件大小超出限制</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		提示：<br>
                		单个附件不能超过10M，请重新选择附件简历！
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumeConfirm-->
    
</div>
<!------------------------------------- end ----------------------------------------->  

<script src="style/js/Chart.min.js" type="text/javascript"></script>
<script src="style/js/profile.min.js" type="text/javascript"></script>
<!-- <div id="profileOverlay"></div> -->
<div class="" id="qr_cloud_resume" style="display: none;">
	<div class="cloud">
		<img width="134" height="134" src="">
		<a class="close" href="javascript:;"></a>
	</div>
</div>

			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="h/about.html">联系我们</a>
		    <a target="_blank" href="http://www.baidu.com">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href=https://weibo.com/u/5704043792>奇迹才聘微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2018-2020 QiJiCaiPin <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div>
<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
<div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div>
<div id="cboxTopCenter" style="float: left;"></div>
<div id="cboxTopRight" style="float: left;"></div>
</div>
<div style="clear: left;">
<div id="cboxMiddleLeft" style="float: left;"></div>
<div id="cboxContent" style="float: left;">
<div id="cboxTitle" style="float: left;"></div>
<div id="cboxCurrent" style="float: left;"></div>
<button type="button" id="cboxPrevious"></button>
<button type="button" id="cboxNext"></button>
<button id="cboxSlideshow"></button>
<div id="cboxLoadingOverlay" style="float: left;"></div>
<div id="cboxLoadingGraphic" style="float: left;"></div></div>
<div id="cboxMiddleRight" style="float: left;"></div></div>
<div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div>
<div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div>
<div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>