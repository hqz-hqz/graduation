<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>教师界面</title>
<meta name="description" content="这是教师主页">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="../img/lysf.ico">
<link rel="stylesheet" href="../amazeui/css/amazeui.min.css" />
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/app.css">
</head>

<body data-type="index">

<input id="hiddenText" type="hidden" value="${sessionScope.user.userId }"/>
	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<a href="javascript:;" style="padding-left: 18px; color: #3599D6;"
				class=""><strong>毕业设计（论文）管理系统</strong></a>
		</div>
		<div>
			<a href="javascript:;"> <span
				class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right"></span>
			</a>
		</div>

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">

				<li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
					<a class="am-dropdown-toggle tpl-header-list-link"
					href="javascript:;"> <span class="am-icon-bell-o"></span> 提醒 <span
						class="am-badge tpl-badge-success am-round">5</span></span>
				</a>
					<ul class="am-dropdown-content tpl-dropdown-content">
						<li class="tpl-dropdown-content-external">
							<h3>
								你有 <span class="tpl-color-success">5</span> 条提醒
							</h3>
							<a href="###">全部</a>
						</li>
						<li class="tpl-dropdown-list-bdbc"><a href="#"
							class="tpl-dropdown-list-fl"><span
								class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-success"></span>
								【预览模块】移动端 查看时 手机、电脑框隐藏。</a> <span class="tpl-dropdown-list-fr">3小时前</span>
						</li>
						<li class="tpl-dropdown-list-bdbc"><a href="#"
							class="tpl-dropdown-list-fl"><span
								class="am-icon-btn am-icon-check tpl-dropdown-ico-btn-size tpl-badge-danger"></span>
								移动端，导航条下边距处理</a> <span class="tpl-dropdown-list-fr">15分钟前</span></li>
						<li class="tpl-dropdown-list-bdbc"><a href="#"
							class="tpl-dropdown-list-fl"><span
								class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-warning"></span>
								追加统计代码</a> <span class="tpl-dropdown-list-fr">2天前</span></li>
					</ul>
				</li>
				<li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
					<a class="am-dropdown-toggle tpl-header-list-link"
					href="javascript:;"> <span class="am-icon-comment-o"></span> 消息
						<span class="am-badge tpl-badge-danger am-round">9</span></span>
				</a>
					<ul class="am-dropdown-content tpl-dropdown-content">
						<li class="tpl-dropdown-content-external">
							<h3>
								你有 <span class="tpl-color-danger">9</span> 条新消息
							</h3>
							<a href="###">全部</a>
						</li>
						<li><a href="#" class="tpl-dropdown-content-message"> <span
								class="tpl-dropdown-content-photo"> <img
									src="../img/user02.png" alt="">
							</span> <span class="tpl-dropdown-content-subject"> <span
									class="tpl-dropdown-content-from"> 禁言小张 </span> <span
									class="tpl-dropdown-content-time">10分钟前 </span>
							</span> <span class="tpl-dropdown-content-font"> Amaze UI 的诞生，依托于
									GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </span>
						</a> <a href="#" class="tpl-dropdown-content-message"> <span
								class="tpl-dropdown-content-photo"> <img
									src="../img/user03.png" alt="">
							</span> <span class="tpl-dropdown-content-subject"> <span
									class="tpl-dropdown-content-from"> Steam </span> <span
									class="tpl-dropdown-content-time">18分钟前</span>
							</span> <span class="tpl-dropdown-content-font"> 为了能最准确的传达所描述的问题，
									建议你在反馈时附上演示，方便我们理解。 </span>
						</a></li>

					</ul>
				</li>
				<li class="am-hide-sm-only"><a href="javascript:;"
					id="admin-fullscreen" class="tpl-header-list-link"><span
						class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

				<li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
					<a class="am-dropdown-toggle tpl-header-list-link"
					href="javascript:;"> <span class="tpl-header-list-user-nick">${sessionScope.user.userName }</span><span
						class="tpl-header-list-user-ico">
						<c:choose>
							<c:when test="${sessionScope.user.userPortrait!=''&&sessionScope.user.userPortrait!=null }">
								<img id="userPortrait" src="${sessionScope.user.userPortrait }"></span>
							</c:when>
							<c:otherwise>
								<img id="userPortrait" src="../img/user01.png"></span>
							</c:otherwise>
						</c:choose>
				</a>
					<ul class="am-dropdown-content">
						<li><a href="#" id="userInfo_a" style="outline: none;"><span class="am-icon-user"></span> 信息</a></li>
						<!-- <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li> -->
						<li><a href="/graduation/userController/logout" style="outline: none;"><span class="am-icon-power-off"></span>
								退出</a></li>
					</ul>
				</li>
				<li><a href="/graduation/userController/logout" class="tpl-header-list-link"><span
						class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
			</ul>
		</div>
	</header>

	<div class="tpl-page-container tpl-page-header-fixed">

		<div class="tpl-left-nav tpl-left-nav-hover">
			<div class="tpl-left-nav-title">功能列表</div>
			<div class="tpl-left-nav-list">
				<ul class="tpl-left-nav-menu">
					<li class="tpl-left-nav-item"><a href="tcontent.html"
						class="nav-link active link_a" target="iframe_a"> <i class="am-icon-home"></i> <span>首页</span>
					</a></li>
					<li class="tpl-left-nav-item"><a href="tkt.html"
						class="nav-link link_a" target="iframe_a"> <i class="am-icon-check-square-o"></i> <span>课题申报</span>
					</a></li>

					<li class="tpl-left-nav-item"><a href="javascript:;"
						class="nav-link tpl-left-nav-link-list left-nav-link"> <i
							class="am-icon-tasks"></i> <span>流程管理</span> <i
							class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
					</a>
						<ul class="tpl-left-nav-sub-menu" style="display: block;">
							<li><a href="tsure.html" class="link_a" target="iframe_a"> <i
									class="am-icon-angle-right"></i> <span>确认选题</span>
							</a><a href="tstudentlist.html" class="link_a" target="iframe_a"> <i
									class="am-icon-angle-right"></i> <span>教师评审</span>
							</a><a href="tstudentlist2.html" class="link_a" target="iframe_a"> <i
									class="am-icon-angle-right"></i> <span>成绩评定</span>
							</a><a href="tmdbstudentlist.html" class="link_a" target="iframe_a"> <i
									class="am-icon-angle-right"></i> <span>免答辩申请</span>
							</a></li>
						</ul></li>

					<li class="tpl-left-nav-item"><a href="javascript:;"
						class="nav-link tpl-left-nav-link-list left-nav-link"> <i
							class="am-icon-wpforms"></i> <span>查看信息</span> <i
							class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
					</a>
						<ul class="tpl-left-nav-sub-menu">
							<li><a href="tstudentinfo.html" class="link_a" target="iframe_a"> <i
									class="am-icon-angle-right"></i> <span>学生联系信息</span>
							</a><a href="tinfo.html" class="link_a" target="iframe_a"> <i class="am-icon-angle-right"></i>
									<span>教师分组信息</span>
							</a></li>
						</ul></li>

					<li class="tpl-left-nav-item"><a href="tstudentdown.html"
						class="nav-link tpl-left-nav-link-list link_a" target="iframe_a"> <i
							class="am-icon-table"></i> <span>学生材料下载</span>
					</a></li>

					<li class="tpl-left-nav-item"><a href="javascript:;"
						class="nav-link tpl-left-nav-link-list left-nav-link"> <i
							class="am-icon-edit"></i> <span>修改申请</span> <i
							class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
					</a>
						<ul class="tpl-left-nav-sub-menu">
							<li>
								<a href="tstudentlistupdate.html" class="link_a" target="iframe_a"> <i
										class="am-icon-angle-right"></i> <span>意见修改</span>
								</a><a href="tupdatemdb.html" class="link_a" target="iframe_a"> <i class="am-icon-angle-right"></i>
										<span>免答辩意见修改</span>
								</a>
							</li>
						</ul></li>

					<li class="tpl-left-nav-item"><a href="tslist.html"
						class="nav-link tpl-left-nav-link-list link_a" target="iframe_a"> <i
							class="am-icon-comments-o"></i> <span>互动交流</span>
					</a></li>

				</ul>
			</div>
		</div>


		<!--begin  -->
		<div class="tpl-content-wrapper">
		<iframe id="iframepage" name="iframe_a" src="tcontent.html" style="width: 100%;height: 850px;" seamless></iframe>
		</div>
		<!--end  -->
		
	</div>
	<div>
		<div class="am-g" style="position: fixed; bottom: 0;">
			<div class="am-u-lg-12">
				<footer data-am-widget="footer" class="am-footer am-footer-default"
					style="border-radius: 6px;">
					<div class="am-footer-switch"></div>
					<div class="am-footer-miscs ">
						<p>
							由 <a href="https://github.com/Li-Zhan" title="李展" target="_blank">李展</a>
							提供技术支持
						</p>
						<p>copyright &copy; 2018-2028, All Rights Reserved.</p>
					</div>
				</footer>
			</div>
		</div>
	</div>
	
	<div class="am-modal am-modal-alert" tabindex="-1" id="userInfo-modal">
	  <div class="am-modal-dialog">
	    <div class="am-modal-hd">个人基本信息
	      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
	    </div>
	    <div class="am-modal-bd" id="userInfo-bd" style="margin-top: 10px;">
	    	  <form class="am-form am-form-horizontal">
				  <div class="am-form-group">
				    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">姓名</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="userName">
				    </div>
				  </div>
				  <div class="am-form-group">
				    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">个人<br/>描述</label>
				    <div class="am-u-sm-10">
				      <textarea style="width: 100%;" id="describe"></textarea>
				    </div>
				  </div>
				  <div class="am-form-group">
				    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">账号</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="account" disabled>
				    </div>
				  </div>
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">密码</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="password">
				    </div>
				  </div>
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">电话</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="tel">
				    </div>
				  </div>
			      <div class="am-form-group">
				      <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">性别</label>
					    <div class="am-u-sm-10">
					      <label class="am-radio-inline am-fl">
					    	<input type="radio" name="radio11" value="1" data-am-ucheck> 男
						  </label>
						  <label class="am-radio-inline am-fl">
						    <input type="radio" name="radio11" value="0" data-am-ucheck> 女
						  </label>
					    </div>
				 </div>
				<!--  <div class="am-form-group">
				      <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">头像</label>
					    <div class="am-u-sm-10">
					      <div class="am-form-group am-form-file am-fl">
							  <button type="button" class="am-btn am-btn-default am-btn-sm">
							    <i class="am-icon-cloud-upload"></i> 选择要上传的头像</button>
							  <input type="file" multiple>
						  </div>
					    </div>
				 </div> -->
				</form>
	    </div>
		<div class="am-modal-footer">
	      <span class="am-modal-btn" id="updateInfo_btn">修改</span>
	    </div>
	  </div>
	</div>

	<script src="../js/jquery.min.js"></script>
	<script src="../amazeui/js/amazeui.min.js"></script>
	<script src="js/app.js"></script>
	<script type="text/javascript">
		$(function() {
			
			$('#userInfo_a').click(function(){
				$.get('/graduation/teacherController/findTeacher',function(data){
					$('#userName').val(data.user.userName);
					$('#describe').val(data.teacherDescribe);
					$('#account').val(data.user.userAccount);
					$('#password').val(data.user.userPassword);
					$('#tel').val(data.user.userTel);
					$('input[name=radio11]').each(function(index,value){
						if($(value).val()==data.user.userGender){
							$(this).attr('checked','checked');
						}
					});
					$('#updateInfo_btn').append($('<input>').attr({'type':'hidden','name':'teacherId'}).val(data.teacherId));
					$('#updateInfo_btn').append($('<input>').attr({'type':'hidden','name':'userId'}).val(data.userId));
					$('#userInfo-modal').modal('open');
				});
			});
			
			$('#updateInfo_btn').click(function(){
				$.post('/graduation/teacherController/updateTeacherInfo',{
					'_method':'put',
					'teacherId':$('input[name=teacherId]').val(),
					'user.userId':$('input[name=userId]').val(),
					'user.userName':$('#userName').val(),
					'teacherDescribe':$('#describe').val(),
					'user.userPassword':$('#password').val(),
					'user.userTel':$('#tel').val(),
					'user.userGender':$('input[name=radio11]:checked').val()
				},function(data){
					if(data){
						$('#userInfo-modal').modal('close');
					}
				});
				return false;
			});
			
			//网页刷新回到首页
			$(window).on('unload',function(){
				window.location.href='tindex.jsp';
			});
			
   			$('#iframepage').on('load',function(){
				  //"ref_page"为引用页面DIV的ID，获取DIV的外部宽度、外部高度。
				  var height = $(this).contents().find('#ref_page').outerHeight();
				  // 设置iframe的宽度、高度。
				  if(height<300){
					  height=850;
				  }
				  $(this).height(height);
			});   
			
			//知道点击的是那个选项
			$('.link_a').click(function() {
				$('.link_a').each(function() {
					$(this).removeClass('active');
				});
				$(this).addClass('active');
			});
			
			//左侧选项收缩与展开
	 		$('.left-nav-link').click(function() {
			 	$('.tpl-left-nav-sub-menu').each(function() {
					$(this).css('display','none');
				});
	 			$(this).parent().children('ul').css('display','block');
			 	$('.tpl-left-nav-sub-menu').each(function() {
			 		if($(this).css('display')=='block'){
			 			$(this).parent().children('a').children('i').eq(1).addClass('tpl-left-nav-more-ico-rotate');
			 		}else{
			 			$(this).parent().children('a').children('i').eq(1).removeClass('tpl-left-nav-more-ico-rotate');
			 		}
				});
			}); 
			
		});
	</script>
</body>

</html>