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
	<title>我的云盘</title>
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
		<div>
		
		
		</div>
		<div class="clear"></div>
		<%@include file="../common/foot.jsp"%>

</body>
</html>