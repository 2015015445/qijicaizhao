<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>${company.name}-奇迹才聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="平潭协创进出口贸易有限公司 福建平潭协创进出口贸易有限公司 上海 移动互联网 天使轮 150-500人 测试的发打发打发大范德萨发">
<meta name="keywords" content="平潭协创进出口贸易有限公司 福建平潭协创进出口贸易有限公司 上海 移动互联网 天使轮 150-500人 测试的发打发打发大范德萨发">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
var ctx = "http://www.lagou.com";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link href="${ctx}/style/css/style.css" type="text/css" rel="stylesheet">
<link href="${ctx}/style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="${ctx}/style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/style/js/jquery.1.10.1.min.js"></script>
<script src="${ctx}/style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/ajaxfileupload.js"></script>
<script src="${ctx}/style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="${ctx}/style/js/conv.js" type="text/javascript"></script>
<script src="${ctx}/style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="index.jsp">
    			<img width="229" height="43" alt="奇迹才聘招聘-专注互联网招聘" src="${ctx}/style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="${ctx}/user/index">首页</a></li>
    			<li><a href="${ctx}/company/findallcompany">公司</a></li>
    			<li><a target="_blank" href="">职业预测</a></li>
    				    			<li>
	    				<a rel="nofollow" href="">简历管理</a>
	    					    			</li>
	    							    			<li class="current"><a rel="nofollow" href="${ctx}/create.jsp">发布职位</a></li>
	    		    		</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span>${id1}&nbsp;</span> 
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
                                </div>
    </div><!-- end #header -->
    <div id="container">
        <!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
        <div class="clearfix">
        				
            <div class="content_l">           
	                <div class="c_detail">
	                	<div style="background-color:#fff;" class="c_logo">
		                		<img width="190" height="190" alt="公司logo" src="${company.image}">
	                        </a>
		                </div>
		                
		                <div class="c_logo" style="background-color:#fff;">
			                <div id="logoShow">
			                	<img src="${company.image}" width="190" height="190" alt="公司logo" />
		                    </div>
			            </div>
		                <span class="error" id="logo_error" style="display:none;"></span>
	                    <div class="c_box companyName">
	                    	<h2 title="公司名称">公司名称</h2>
	                        	<em class="unvalid"></em>
                        		<span class="va dn" style="display: none;">奇迹才聘未认证企业</span>
	                        	<div class="clear"></div>
	                       		<h1 title="福建平潭协创进出口贸易有限公司" class="fullname">${company.name}</h1>
	                        <form class="clear editDetail dn" id="editDetailForm" style="display: none;">
	                            <input type="text" placeholder="请输入公司简称" value="" name="companyShortName" id="companyShortName" class="valid">
	                            <input type="text" placeholder="一句话描述公司优势，核心价值，限50字" value="${company.briefintroduction}" name="companyFeatures" id="companyFeatures" class="valid">
	                            <input type="hidden" value="${coompany.id}" id="companyId" name="companyId">
		                    </form>
	                            
	                        <div class="clear oneword" style="display: block;"><img width="17" height="15" src="${ctx}/style/images/quote_l.png">&nbsp; <span>${company.industryfield}</span> &nbsp;<img width="17" height="15" src="${ctx}/style/images/quote_r.png"></div>
	                        <h3 class="dn">已选择标签</h3>
	                        <ul style="overflow:auto" id="hasLabels" class="reset clearfix">
	                        			                        	<li><span>${company.briefintroduction}</span></li>
	                        </ul>
	                        <div class="dn" id="addLabels">
	                        	<input type="hidden" value="1" id="labelPageNo">	
	                            <div class="clear"></div>
	                            <ul class="reset clearfix"></ul>
	                        </div>
	                    </div>
	                	<div class="clear"></div>
	                </div>
                	<div class="c_breakline"></div>
       				<div id="Product">
        					        				
	        					<div class="product_wrap">

						    		<!--无产品 -->
									<!-- <dl class="c_section dn">
					                	<dt>
					                    	<h2><em></em>公司产品</h2>
					                    </dt>
					                    <dd>
					                    	<div class="addnew">
					                        	酒香不怕巷子深已经过时啦！<br>
												把自己优秀的产品展示出来吸引人才围观吧！<br>
					                        </div>
					                    </dd>
					                </dl> -->
	                
					            	<!--产品编辑-->
					                <!-- <dl id="newProduct" class="newProduct dn">
					                	<dt>
					                    	<h2><em></em>公司产品</h2>
					                    </dt>
					                    <dd>
					                        <form method="post" class="productForm">
					                            <div class="new_product">
					                            	
							                            <div class="product_upload dn productNo">
							                                <div style="background-color: rgb(147, 183, 187);">
							                                	<span>上传产品图片</span> 
							                                    <br>	
							                                   		 尺寸：380*220px  	大小：小于5M
							                                </div>
							                            </div>
							                            <div class="product_upload productShow">
							                            	<img width="380" height="220" src="style/images/product_default.png">
								                        	<span>更换产品图片<br>380*220px 小于5M</span>
								                        </div>
							                        
							                        <input type="file" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="product_check(this,'http://www.lagou.com/c/upload.json','productNo','productShow','type','productInfos');" name="myfiles" id="myfiles0">
							                    	<input type="hidden" value="3" name="type" class="type"> 
							                    	<input type="hidden" value="images/product_default.png" name="productPicUrl" class="productInfos">   
							                    </div》
					                            <div class="cp_intro">
					                               	<input type="text" placeholder="请输入产品名称" value="发大发" name="product" class="valid">	
					                                <input type="text" placeholder="请输入产品网址" value="http://www.weimob.com" name="productUrl" class="valid">	
					                                <textarea placeholder="请简短描述该产品定位、产品特色、用户群体等" maxlength="500" value="发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf发达发生的faf" class="s_textarea valid" name="productProfile">随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写随便写</textarea>	
					                                <div class="word_count fr">你还可以输入 <span>437</span> 字</div>
					                                <div class="clear"></div>
					                        		<input type="hidden" value="11867" class="product_id">
					                            </div>
											</form>
					                    </dd>
					                </dl> -->
					                <!--有产品-->
					                <dl class="c_product">
					                	<dt>
					                    	<h2><em></em>公司产品</h2>
					                    </dt>
					                   <c:forEach items="${productlist}" var="list1">
					                   	 <dd>
					                    	<img width="380" height="220" alt="哎呀，照片跑路啦" src="${list1.image}">
				                        	<div class="cp_intro">
				                        		<h3><a target="_blank" href="${list1.url}">${list1.name}</a></h3>
					                            <div class="scroll-pane" style="overflow: auto; padding: 0px; width: 260px;">
					                            <div class="jspContainer" style="width: 260px; height: 140px;"><div class="jspPane" style="padding: 0px; top: 0px;height:140px; width: 260px;overflow:auto;">${list1.introduction}</div></div></div>
					                        </div>
					            		</dd>
					                   </c:forEach>
					                </dl>
	              				</div>
       						</div><!-- end #Product --> 
       	
       				<div id="Profile">
			            				        	<div class="profile_wrap">
					             <!--无介绍 -->
									<!-- <dl class="c_section dn" style="display: none;">
					                	<dt>
					                    	<h2><em></em>公司介绍</h2>
					                    </dt>
					                    <dd>
					                    	<div class="addnew">
					                        	详细公司的发展历程、让求职者更加了解你!<br>
					                        </div>
					                    </dd>
					                </dl> -->
					            <!--编辑介绍-->
					               <!--  <dl class="c_section newIntro dn" style="display: none;">
					                    <dt>
					                        <h2><em></em>公司介绍</h2>
					                    </dt>
					                    <dd>
						                    <form id="companyDesForm">
						                        <textarea placeholder="请分段详细描述公司简介、企业文化等" name="companyProfile" id="companyProfile" class="valid">该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎</textarea>		                                        
						                        <div class="word_count fr">你还可以输入 <span>955</span> 字</div>
						                        <div class="clear"></div>
						                    </form>
					                    </dd>
					                </dl> -->
					            
					            <!--有介绍-->
					               <dl class="c_section" style="display: block;">
					               		<dt>
					                   		<h2><em></em>公司介绍</h2>
					                   	</dt>
					                   	<dd>
					                   		<div class="c_intro">${company.detailintroduction}</div>
					                   	</dd>
					               	</dl>
				            </div>
	     			</div><!-- end #Profile -->
      	
      	<!--[if IE 7]> <br /> <![endif]-->
	    
	        	 		        	<!--无招聘职位-->
						<dl id="noJobs" class="c_section">
		                	<dt>
		                    	<h2><em></em>招聘职位</h2>
		                    </dt>
		                    <c:forEach items="${positionlist}" var="list3">
		                    	<dd>
		                    	<div class="addnew">
		                        	${list3.name}<br>
		                        </div>
		                    </dd>
		                    </c:forEach>
		                </dl>
	          	
	          	<input type="hidden" value="" name="hasNextPage" id="hasNextPage">
	          	<input type="hidden" value="" name="pageNo" id="pageNo">
	          	<input type="hidden" value="" name="pageSize" id="pageSize">
          		<div id="flag"></div>
            </div>	<!-- end .content_l -->
            
            <div class="content_r">
            	<div id="Tags">
	            	<div id="c_tags_show" class="c_tags solveWrap" style="display: block;">
	                    <table><tbody><tr><td>地点</td><td>上海</td></tr><tr><td>领域</td><td>移动互联网</td></tr><tr><td>规模</td><td>150-500人</td></tr><tr><td>主页</td><td><a target="_blank" href="http://www.zmtpost.com">http://www.zmtpost.com</a></td></tr></tbody></table>
	                </div>
	                <div id="c_tags_edit" class="c_tags editTags dn" style="display: none;">
		                <form id="tagForms">
		                    <table>
		                        <tbody><tr>
		                            <td>地点</td>
		                            <td>
		                            	<input type="text" placeholder="请输入地点" value="${company.location}" name="city" id="city" class="valid">	
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>领域</td><!-- 支持多选 -->
		                            <td>
		                            	<input type="hidden" value="${company.industryfield}" id="industryField" name="industryField" class="valid">
		                            	<input type="button" style="background:none;cursor:default;border:none !important;" disable="disable" value="移动互联网" id="select_ind" class="select_tags">
		                                <!-- <div id="box_ind" class="selectBox dn">
		                                    <ul class="reset">
			                                    				                        							                            			<li class="current">移动互联网</li>
				                            							                            		                                    </ul>
		                                </div>	 -->
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>规模</td>
		                            <td>
		                            	<input type="hidden" value="150-500人" id="companySize" name="companySize" class="valid">
		                            	<input type="button" value="${comapny.scale}" id="select_sca" class="select_tags">
		                                <div class="selectBox dn" id="box_sca" style="display: none;">
		                                </div>	
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>主页</td>
		                            <td>
                            			<input type="text" placeholder="请输入网址" value="${company.url}" name="companyUrl" id="companyUrl" class="valid">	
		                            </td>
		                        </tr>
		                    </tbody></table>
		                    <input type="hidden" id="comCity" value="上海">
		                    <input type="hidden" id="comInd" value="移动互联网">
		                    <input type="hidden" id="comSize" value="150-500人">
		                    <input type="hidden" id="comUrl" value="http://www.zmtpost.com">
		                    <div class="clear"></div>
		            	</form>
	                </div>
       			</div><!-- end #Tags -->
       			
       			<dl class="c_section c_stages">
                	<dt>
                    	<h2><em></em>融资阶段</h2>
                    </dt>
                    <dd>
                    	<ul class="reset stageshow">
                    		<li>目前阶段：<span class="c5">${company.thefinancingstage}</span></li>
                    		                    	</ul>
                    	<form class="dn" id="stageform">
                    		<div class="stageSelect">
                    			<label>目前阶段</label>
                    			<input type="hidden" value="天使轮" id="financeStage" name="financeStage">
	                         	<input type="button" value="天使轮" id="select_fin" class="select_tags_short fl">
	                            <div class="selectBoxShort dn" id="box_fin" style="display: none;">
	                                 <ul class="reset">
	                                 		                                 		
		                                 						                           			<li>未融资</li>
				                           					                           		
	                                     	                                 		
		                                 						                           			<li class="current">天使轮</li>
				                           					                           		
	                                     	                                 		
		                                 						                           			<li>A轮</li>
				                           					                           		
	                                     	                                 		
		                                 						                           			<li>B轮</li>
				                           					                           		
	                                     	                                 		
		                                 						                           			<li>C轮</li>
				                           					                           		
	                                     	                                 		
		                                 						                           			<li>D轮及以上</li>
				                           					                           		
	                                     	                                 		
		                                 						                           			<li>上市公司</li>
				                           					                           		
	                                     	                                 </ul>
	                             </div>	
                    		</div>	
	                    	<ul id="stagesList" class="reset">
		                    				                    <li>
		                    		<label>融资阶段</label>
		                    		<input type="hidden" class="select_invest_hidden" name="select_invest_hidden">
				                    <input type="button" value="融资阶段" class="select_tags_short select_invest">
				                    <div class="selectBoxShort dn" style="display: none;">
				                        <ul class="reset">
				                        						                        						                        					                        							                        	<li>天使轮</li>
					                        						                        					                        							                        	<li>A轮</li>
					                        						                        					                        							                        	<li>B轮</li>
					                        						                        					                        							                        	<li>C轮</li>
					                        						                        					                        							                        	<li>D轮及以上</li>
					                        						                        					                        							                        	<li>上市公司</li>
					                        						                        				                        </ul>
				                    </div>
				                    <label>投资机构</label>
				                    <input type="text" placeholder="如真格基金" name="stageorg" value="">
		                    	</li>
		                    </ul>
		                    <div class="clear"></div>
		                    
		                    <div class="dn" id="cloneInvest">
		                    	<label>融资阶段</label>
	                    		<input type="hidden" class="select_invest_hidden" name="select_invest_hidden">
			                    <input type="button" value="发展阶段" class="select_tags_short select_invest">
			                    <div class="selectBoxShort dn" style="display: none;">
			                        <ul class="reset">
			                        					                        					                        				                        						                        	<li>天使轮</li>
				                        					                        				                        						                        	<li>A轮</li>
				                        					                        				                        						                        	<li>B轮</li>
				                        					                        				                        						                        	<li>C轮</li>
				                        					                        				                        						                        	<li>D轮及以上</li>
				                        					                        				                        						                        	<li>上市公司</li>
				                        					                        			                        </ul>
			                    </div>
			                    <label>投资机构</label>
			                    <input type="text" placeholder="如真格基金" name="stageorg">
		                    </div>
		                </form>
                    </dd>
                </dl><!-- end .c_stages -->
       				
	      
	       		<div id="Member">		
		       			       		<!--有创始团队-->
		                <dl class="c_section c_member">
		                	<dt>
		                    	<h2><em></em>创始团队</h2>
	                    				                    </dt>
		                    <dd> 
		                    			                    				                    
			       					<div class="member_wrap">
			       						
				                        <!-- 无创始人 -->
				                        <!--<div class="member_info addnew_right dn">
				                        	展示公司的领导班子，<br>提升诱人指数！<br>
				                        </div>
				                        
				                      	 编辑创始人
		                        		<div class="member_info newMember dn">
			                        		<form class="memberForm">
					                            <div class="new_portrait">
						                            <div class="portrait_upload dn portraitNo">
						                                <span>上传创始人头像</span>
						                            </div>
						                            <div class="portraitShow">
						                            	<img width="120" height="120" src="style/images/leader_default.png">
							                        	<span>更换头像</span>
							                        </div>
							                        <input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="member_check(this,'http://www.lagou.com/c/upload.json','portraitNo','portraitShow','type','leaderInfos');" name="myfiles" id="profiles0">
							                    	<input type="hidden" value="7" name="type" class="type">
							                    	<input type="hidden" value="images/leader_default.png" name="photo" class="leaderInfos">
						                            <em>
												                                尺寸：120*120px <br> 	
												                                大小：小于5M
						                            </em>
						                        </div>
						                        <input type="text" placeholder="请输入创始人姓名" value="孙泰英" name="name" class="valid">	
					                            <input type="text" placeholder="请输入创始人当前职位" value="ceo" name="position">	
					                            <input type="text" placeholder="请输入创始人新浪微博地址" value="http://weimob.weibo.com" name="weibo" class="valid">	
					                            <textarea placeholder="请输入创始人个人简介" maxlength="500" class="s_textarea valid" name="remark">发放的发达范德萨范德萨范德萨发的复大发大水发生的</textarea>	
					                            <div class="word_count fr">你还可以输入 <span>476</span> 字</div>
					                            <div class="clear"></div>
					                            <input type="submit" value="保存" class="btn_small">
				                                <a class="btn_cancel_s member_delete" href="javascript:void(0)">删除</a>
				                        		<input type="hidden" value="11493" class="leader_id">
				                        	</form>
				                        </div> -->
				                        
				                        <!-- 显示创始人 -->
				                    	<c:forEach items="${foundingteamlist}" var="list2">
				                    		<div class="member_info">
				                        	<div class="m_portrait">
				                            	<div></div>
				                            	<img width="120" height="120" alt="照片去哪了" src="${list2.image}">
					                        </div>
				                            <div class="m_name">${list2.name}<a target="_blank" class="weibo" href="${list2.weibourl}"></a></div>
				                            <div class="m_position">${list2.positionnow}</div>
				                    		<div class="m_intro">${list2.introduction}</div>
				                        </div>
				                    	</c:forEach>
				                        
				                     </div><!-- end .member_wrap -->
				                     				                 		                    </dd>
		                </dl>
		       			       	</div> <!-- end #Member -->
	       	
	       	
	       <!--公司深度报道-->
            <!-- <div id="Reported">	
	            		            无报道
		            <dl class="c_section c_reported">
		            	<dt>
		                	<h2><em></em>公司深度报道</h2>
                   			<a title="添加报道" class="c_add dn" href="javascript:void(0)"></a>
		                </dt>
		                <dd>
		                	编辑报道
                       		<ul class="reset dn"></ul>
		                	
		                	无报道
	                        <div class="addnew_right reported_info">
	                        	展示外界对公司的深度报道，<br>便于求职者了解公司！<br>
	                        </div>
	                        
		                	<ul class="newReport dn">
	                        	<li>
		                			<a style="display:none;" class="article" title="" target="_blank" ></a>
		                			<a title="编辑报道" class="c_edit dn" href="javascript:;"></a>
		                			<form class="reportForm">
		                				<input type="text" placeholder="请输入文章标题" value="" name="articleTitle">
		                				<input type="text" placeholder="请输入文章链接" value="" name="articleUrl">
			                            <input type="hidden" value="" class="article_id">
			                     	</form>
		                		</li>
	                        </ul>
				        </dd>
		            </dl>end .c_reported
		                    </div> --><!-- end #Reported -->
	       	
        </div>
   	</div>

<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<div style="width:650px;height:470px;" class="popup" id="logoUploader">
		<object width="650" height="470" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="FlashID">
		  <param value="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json" name="movie">
		  <param value="high" name="quality">
		  <param value="opaque" name="wmode">
		  <param value="111.0.0.0" name="swfversion">
		  <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
		  <param value="../../Scripts/expressInstall.swf" name="expressinstall">
		  <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
		  <!--[if !IE]>-->
		  <object width="650" height="470" data="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json" type="application/x-shockwave-flash">
		    <!--<![endif]-->
		    <param value="high" name="quality">
		    <param value="opaque" name="wmode">
		    <param value="111.0.0.0" name="swfversion">
		    <param value="../../Scripts/expressInstall.swf" name="expressinstall">
		    <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
		    <div>
		      <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
		      <p><a href="http://www.adobe.com/go/getflashplayer"><img width="112" height="33" src="style/images/get_flash_player.gif" alt="获取 Adobe Flash Player"></a></p>
		    </div>
		    <!--[if !IE]>-->
		  </object>
		  <!--<![endif]-->
		</object>
	</div><!-- #logoUploader -->
</div>
<!------------------------------------- end ----------------------------------------->

<script src="style/js/company.min.js" type="text/javascript"></script>
<script>
var avatar = {};
avatar.uploadComplate = function( data ){
	var result = eval('('+ data +')');
	if(result.success){
		jQuery('#logoShow img').attr("src",ctx+ '/'+result.content);
		jQuery.colorbox.close();
	}
};
</script>
			<div class="clear"></div>
			<input type="hidden" value="af5b64a9520a4b7da6287ff3400dde11" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.jsp">联系我们</a>
		    <a target="_blank" href="http://www.baidu.com">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href=https://weibo.com/u/5704043792>奇迹才聘微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="${ctx}/style/js/core.min.js" type="text/javascript"></script>
<script src="${ctx}style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>