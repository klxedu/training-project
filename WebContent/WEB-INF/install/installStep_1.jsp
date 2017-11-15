<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<link rel="stylesheet" type="text/css"
	href="../skin/bootstrap/css/bootstrap-3.3.5.min.css" />
<link rel="stylesheet"
	href="../skin/bootstrap/css/docs-b-platform-introduction.min.css" />
<script src="../common/jquery/jquery-1.11.3.min.js"></script>
<script src="../common/bootstrap/bootstrap-3.3.5.min.js"></script>
<style>
body {
	padding-top: 50px;
}

.jumbotron {
	background-color: #fff;
}

.panel-heading strong {
	font-size: 20px;
	font-family: "黑体";
}

.panel, .panel-footer {
	overflow: hidden;
}

.panel-footer .btn {
	width: 100px;
}
</style>
</head>
<script type="text/javascript">
<!--
	function stepAction(actionType) {
		var f = document.getElementById("stepForm");
		document.getElementsByName("actionType")[0].value = actionType;
		f.submit();
	}
//-->

$(function(){
	 $("input[name='provision']").each(function(){
		 $(this).click(function(){
			 if("accept"==$(this).val()){
				 $("#stepNext").removeAttr("disabled");
			 }
			 if("notAccepted"==$(this).val()){
				 $("#stepNext").attr("disabled","disabled");
			 }
		 });
	 });
 });



</script>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand nav_top" href="#">Gtiles framework</a>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" target="_blank">平台说明</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="jumbotron">
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<strong>安装向导</strong>
				</div>
				<form id="stepForm" method="post" action="./installWizard.do">
					<div class="panel-body" style="overflow-y: scroll; height: 400px;">
						<center>
							<strong><h3>软件安装协议</h3></strong>
						</center>
						<div>
							本协议由XXX制作，用户通过运行本安装程序并点击一下“我同意”的按钮，这表示用户接受以下所有条款。用户应认真阅读本《软件许可协议》(下称《协议》)中各条款。请您审阅并接受或不接受本《协议》(未成年人应在法定监护人陪同下审阅)。除非您接受本《协议》条款，否则您无权下载、安装或使用本软件及其相关服务。您的安装使用行为将视为对本《协议》的接受，并同意接受本《协议》各项条款的约束。<br>
							本《协议》可随时更新，且毋须另行通知。本《协议》条款一旦发生变更，在本软件上公布更新内容。更新后的协议内容一旦公布即有效代替原来的协议条款。您可随时登陆本软件查阅最新版协议条款。
							<br> <br> 1 知识产权声明<br> <br> 1.1
							“软件”的一切版权等知识产权，以及与“软件”相关的所有信息内容，包括但不限于：文字表述及其组合、图标、图饰、图表、色彩、界面设计、版面框架、有关数据、印刷材料、或电子文档等均受著作权法和国际著作权条约以及其他知识产权法律法规的保护。<br>
							<br> 2 “软件”授权范围<br> <br> 2.1
							用户可以在单一一台计算机、终端机、工作站或其他数字电子仪器(下统称“计算机”)上安装、使用、显示、运行本“软件”。<br>
							2.2
							除本《协议》有明确规定外，本《协议》并未对利用本“软件”的其他服务规定相关的服务条款，对于这些服务可能有单独的服务条款加以规范，请用户在使用有关服务时另行了解与确认。如用户使用该服务，视为对相关服务条款的接受。<br>
							<br> 3 用户使用须知<br> <br> 3.1
							用户应保证用户注册登记软件或合作单位提供的服务时提供的资料均为真实无误。<br> <br> 3.2
							用户在遵守法律及本协议的前提下可依本《协议》使用本“软件”。用户无权实施包括但不限于下列行为：<br> <br>
							3.2.1删除本“软件”及其他副本上所有关于版权的信息、内容； <br> <br>
							3.2.4利用本“软件”发表、传送、传播、储存违反国家法律、危害国家安全、祖国统一、社会稳定的内容，或侮辱诽谤、色情、暴力及任何违反国家法律法规政策的内容。
							<br> <br> 3.2.5利用本“软件”发表、传送、传播、储存侵害他人知识产权、商业秘密等合法权利的内容。
							<br> <br>
							3.2.6以任何形式变更、发行、播放、转载、复制、重制、散布、表演、展示迅雷看看播放器节目的音频、视频资源和捕捉音频、视频资源而形成的视频、音频、图象及相关的商业行为。否则将视作侵权，依法追究法律责任。
							<br> <br> 3.3
							使用本“软件”必须遵守国家有关法律和政策等，维护国家利益，保护国家安全，并遵守本协议，对于用户违法或违反本协议的使用而引起的一切责任，由用户负全部责任。<br>
							<br> 3.4未经同意，不得对本“软件”进行反向工程、反向汇编、反向编译等。 <br> <br>
							4 其他条款<br> <br> 4.1 本协议所定的任何条款的部分或全部无效者，不影响其它条款的效力
						</div>
					</div>
					<div class="panel-footer">
						<div class="form-group">
							<div class="radio">
								<label for="provisionAccept"> <input type="radio"
									name="provision" id="provisionAccept" value="accept" checked />
									接受
								</label>
							</div>
							<div class="radio">
								<label for="provisionNotAccepted"> <input type="radio"
									name="provision" id="provisionNotAccepted" value="notAccepted" />
									不接受
								</label>
							</div>
						</div>
						<div class="form-group">
							<input type="hidden" name="actionType">
							<input type="hidden" name="code" value="installStep_3">
						</div>
						<div class="btn-group-justified">
							<div class="pull-right">
								<!-- <input type="button" value="上一步" onclick="stepAction('previous')" class="btn btn-primary" />  -->
								<input type="button" id="stepNext" value="下一步" onclick="stepAction('next')" class="btn btn-primary" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
