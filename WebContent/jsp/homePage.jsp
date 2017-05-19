<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>云存储</title>
	<link type="text/css" rel="stylesheet" href="/cloud/css/style.css" />
	<script type="text/javascript" src="/cloud/js/jquery.min.js"></script>
	<script type="text/javascript" src="/cloud/js/my.js"></script>
	<script type="text/javascript" src="/cloud/js/prototype-1.6.0.3.js"></script>
	<link rel="stylesheet" type="text/css" href="/cloud/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/cloud/css/bootstrap-theme.css" />
	<script src="/cloud/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="/cloud/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>

		<%@include file="../common/head.jsp"%>
		<div class="clear"></div>
		<div id="head_news" style="width: 100%">
			<div>some news here</div>
		</div>
		<div id="homePage" style="width: 100%;height: 60%">	
			<div style="width: 50%;height: 100%;margin-left: 25%">
				<div id="disk">			
				<div style="margin-top: 10px;margin-left: 10px;margin-right: 10px">
					<span style="font-size: 30px;font-weight: bolder;text-align: center;">同步标准盘</span><br>
				</div>
				<div style="margin-top: 20px">
					<span style="font-size: 15px;text-align: center;">空间</span>
					&nbsp;&nbsp;
					<span style="font-size: 15px;text-align: center;">100G</span><br>
					<span style="font-size: 15px;">流量</span>
					&nbsp;&nbsp;
					<span style="font-size: 15px;">不限</span><br>
				</div>
				<div style="margin-top: 40px;margin-left: 10px;margin-right: 10px">
					<span style="font-size: 15px;text-align: center;">价格:</span>
					&nbsp;&nbsp;
					<span style="font-size: 15px;">X元/月</span><br>
				</div>
				<div style="margin-bottom: 10px;margin-top: 10px">
					<a class="btn btn-success" style="width: 100px">免费</a>
				</div>
			</div>
			<div id="addspace">
				<div style="margin-top: 10px;margin-left: 10px;margin-right: 10px">
					<span style="font-size: 30px;font-weight: bolder;text-align: center;">扩容</span><br>
				</div>
				<div style="margin-top: 50px">
					<span style="font-size: 15px;text-align: center;">+100G</span><br>
				</div>
				<div style="margin-top: 32px;margin-left: 10px;margin-right: 10px">
					<span style="font-size: 15px;text-align: center;">价格:</span>
					&nbsp;&nbsp;
					<span style="font-size: 15px;">X元/月</span><br>
				</div>
				<div style="margin-bottom: 10px;margin-top: 10px">
					<a class="btn btn-success" style="width: 100px">购买</a>
				</div>
			</div>
			</div>			
		</div>
		<div class="clear"></div>
		<%@include file="../common/foot.jsp"%>
		<div style="width:100%;position:fixed;bottom:0;left:0;text-align: center;">
			<div style="float: left;margin-left: 38%">
				<a style="color: black;text-decoration: none">©2017 clouders.cn All Rights Reserved</a>
				<a style="color: black;text-decoration: none" href="http://www.miibeian.gov.cn/" target="_blank">苏ICP备17000253号-1</a> 
			</div>
		</div>
</body>
</html>
