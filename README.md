# qijicaizhao
这是奇迹才聘网项目
## 目录  
* [背景介绍](#背景介绍)  
* [项目成员](#项目成员)
* [项目功能介绍](#项目功能介绍)  
  * [个人用户](#个人用户)
  * [公司用户](#公司用户)
* [使用说明](#使用说明)  
  * [获取代码](#获取代码)  
  * [运行环境](#运行环境)  
* [运行效果截图](#运行效果截图)  
  
<a name="背景介绍"></a>  
## 背景介绍  
  
随着时代的发展,很多公司在招聘时都会收到很多简历，如何挑选合适的应聘者称为公司比较棘手的事情，这给公司的人事部门带来相当大的工作负担。与其他传统的人才中介相比，网上招聘具有低成本、大容量、速度快和强调个性化服务的优势。它允许更加灵活的交互方式，提供更丰富的信息资源。设计一个自动化的IT招聘网站以方便人事部门的招聘工作，提高他们的工作效率，同时也能让IT人才找到适合自己的岗位。<br/>  
奇迹才聘网，是一个专注于互联网业人才招聘的网站。 

<a name="项目成员"></a>  
## 项目成员 

* 王伟 （项目经理，编写需求文档，画用例图）  
  * 邮箱 ww201509@foxmail.com
  * github <https://github.com/2015015445/>
* 陈汉 （后台开发，企业用户功能）  
  * 邮箱 2510211460@qq.com
  * github <https://github.com/chenhan9527>
* 时维 （前台开发，前台代码实现）  
  * 邮箱 877935761@qq.com
  * github <http://10.7.1.5/my/page>
* 郑彬 （后台开发，个人用户功能）  
  * 邮箱 1017040120@qq.com
  * github <https://github.com/Mrzhengbin>
* 刘建程（UI设计，页面的设计）  
  * 邮箱 243454411@qq.com
  * github <https://github.com/liujiancheng2015>  
* 杜浩然 （数据库设计，数据处理）  
  * 邮箱 824978658@qq.com
  * github <https://github.com/ranranranhaodu>  
* 何天晨 （算法研究，职业预测算法实现）  
  * 邮箱 648221747@qq.com
  * github <https://github.com/hetianchen>  

  
<a name="项目介绍"></a>  
## 项目功能介绍  
  
奇迹才聘网的设计初衷是给IT界提供一个招聘应聘的平台。用户分个人用户和公司用户两部分。<br>  

<a name="个人用户"></a>
个人求职用户：<br>
1. 注册登录：用户需要输入用户名，密码等信息，确认信息即可完成注册，使用注册过的账号登录网站。<br>
2. 查询公司职位:用户可以搜索职位信息和公司信息，可以按职位名称进行查询，也可以按公司名称、地域信息搜索公司信息。用户可浏览公司简要介绍、公司产品，使应聘者对公司的情况有一大致的了解。应聘者可浏览职位介绍和招聘要求。用户可以在搜索到合适的职位信息后，直接提交申请，提交职位申请需要选择一份简历，然后提交职位申请。<br>
3. 个人简历管理：编辑保存自己的简历，简历内容包括：真实姓名，性别，联系电话，电子邮件，学习经历，求职意向，自我评价等信息。上传附件简历，投递简历，查看简历投递状态。<br>
4. 职位预测：用户输入性别、年龄、专业、学历及上一段工作经历后，通过推荐算法计算出用户的下一份职位<br>

<a name="公司用户"></a>
公司招聘用户：<br>
1. 注册登录：用户需要输入用户名，密码等信息，确认信息即可完成注册，使用注册过的账号登录网站。<br>
2. 编辑公司信息：编辑公司的名称，logo，简介，发展阶段，创始人等信息。<br>
3. 管理职位：发布要招聘的职位，填写职位的名称，薪资，地点，学历要求，经验要求，工作性质，福利诱惑，职责等内容。下线已发布的职位，删除职位。
4. 管理简历：处理收到的简历，通知求职者面试，或者退回简历
  
<a name="使用说明"></a>  
## 使用说明  

<a name="获取代码"></a>  
### 获取代码  
  
* gitcafe项目主页: <https:////github.com/2015015445/qijicaizhao/>  

<a name="运行环境"></a>  
### 运行环境  
1. 数据库使用mysql<br>
2. 整个项目在eclipse工具上运行<br>
3. 需导入本地tomcat服务器lib文件夹中的jar包和项目中lib中的jar包

<a name="运行效果截图"></a>
## 运行效果截图

注册登录![注册登录](https://github.com/2015015445/qijicaizhao/blob/master/pictures/zhucedenglu.png)<br>
职位列表![职位列表](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E9%A6%96%E9%A1%B5.png)
公司列表![公司列表](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E5%85%AC%E5%8F%B8.png)<br>
公司详情![公司详情](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E5%85%AC%E5%8F%B8%E8%AF%A6%E6%83%85.png)<br>
职位详情![职位详情](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E8%81%8C%E4%BD%8D%E8%AF%A6%E6%83%85.png)<br>
编辑简历![编辑简历](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E7%BC%96%E8%BE%91%E7%AE%80%E5%8E%86.png)<br>
预览简历![预览简历](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E9%A2%84%E8%A7%88%E7%AE%80%E5%8E%86.png)<br>
职位预测![职位预测](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E8%81%8C%E4%BD%8D%E9%A2%84%E6%B5%8B.png)<br>
投递简历![投递简历](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E6%8A%95%E9%80%92.png)<br>
简历投递状态![简历投递状态](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E7%AE%80%E5%8E%86%E6%8A%95%E9%80%92%E7%8A%B6%E6%80%81.png)<br>
公司主页![公司主页](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E5%85%AC%E5%8F%B8%E4%B8%BB%E9%A1%B5.png)<br>
发布职位![发布职位](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E5%8F%91%E5%B8%83%E8%81%8C%E4%BD%8D.png)<br>
下线职位![下线职位](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E4%B8%8B%E7%BA%BF%E8%81%8C%E4%BD%8D.png)<br>
管理简历![管理简历](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E7%AE%A1%E7%90%86%E7%AE%80%E5%8E%86.png)<br>
联系我们![联系我们](https://github.com/2015015445/qijicaizhao/blob/master/%E8%BF%90%E8%A1%8C%E6%95%88%E6%9E%9C%E5%9B%BE/%E8%81%94%E7%B3%BB%E6%88%91%E4%BB%AC.png)<br>
