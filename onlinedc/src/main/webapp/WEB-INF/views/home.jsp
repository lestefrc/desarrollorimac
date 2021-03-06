<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- < %@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> -->

<spring:url var="css" value="/static/css" />
<spring:url var="js" value="/static/js" />
<spring:url var="font" value="/static/font-awesome" />

<!DOCTYPE html>
<html ng-app="ngadmin">

<head>
<meta charset=UTF-8>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Page title set in pageTitle directive -->
<title page-title></title>

<!-- Font awesome -->
<link href="${font}/css/font-awesome.css" rel="stylesheet">

<!-- Bootstrap and Fonts -->
<link href="${css}/bootstrap/bootstrap.min.css" rel="stylesheet">

<!-- Main Inspinia CSS files -->
<link href="${css}/animate.css" rel="stylesheet">

<link id="loadBefore" href="${css}/style.css" rel="stylesheet">

</head>

<!-- ControllerAs syntax -->
<!-- Main controller with serveral data used in Inspinia theme on diferent view -->
<body ng-controller="adminCtrl as main" class="fixed-nav fixed-nav-basic">

	<!-- Main view  -->
	<div ui-view></div>

	<!-- jQuery and Bootstrap -->
	<script src="${js}/jquery/jquery-3.1.1.min.js"></script>
	<script src="${js}/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="${js}/bootstrap/bootstrap.min.js"></script>

	<!-- Main Angular scripts-->
	<script src="${js}/angular/angular.min.js"></script>
	<script src="${js}/angular/angular-sanitize.js"></script>
	<script src="${js}/plugins/oclazyload/dist/ocLazyLoad.min.js"></script>
	<script src="${js}/ui-router/angular-ui-router.min.js"></script>
	<script src="${js}/bootstrap/ui-bootstrap-tpls-1.1.2.min.js"></script>
	<!--<script src="${js}/plugins/angular-idle/angular-idle.js"></script>-->
	
	<!-- MetsiMenu -->
	<script src="${js}/plugins/metisMenu/jquery.metisMenu.js"></script>

	<!-- SlimScroll -->
	<script src="${js}/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Peace JS -->
	<script src="${js}/plugins/pace/pace.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="${js}/plugins/iCheck/icheck.min.js"></script>
	<script src="${js}/adapter.js"></script>

	<!-- Angular App Script -->
	<script src="${js}/app.js"></script>
	<script src="${js}/config.js"></script>
	<script src="${js}/directives.js"></script>
	<script src="${js}/controllers.js"></script>

</body>
</html>
