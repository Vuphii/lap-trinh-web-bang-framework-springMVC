<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title><decorator:title default="Master-layout"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value="/assets/user/css/bootstrap.css"/>"
	rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value="/assets/user/style.css"/>" rel="stylesheet" />
<!-- font awesome styles -->
<link
	href="<c:url value="/assets/user/font-awesome/css/font-awesome.css"/>"
	rel="stylesheet">

<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value="/assets/user/ico/favicon.ico"/>">
</head>


<body>

 <%@include file="/WEB-INF/views/layout/user/header.jsp"%>
 
<!-- 
Body Section 
-->
 <decorator:body />

<section class="our_client">
	<hr class="soften"/>
	<h4 class="title cntr"><span class="text">Manufactures</span></h4>
	<hr class="soften"/>
	<div class="row">
		<div class="span2">
			<a href="#"><img alt="" src= "<c:url value="/assets/user/img/1.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src= "<c:url value="/assets/user/img/2.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src= "<c:url value="/assets/user/img/3.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src= "<c:url value="/assets/user/img/4.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src= "<c:url value="/assets/user/img/5.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src= "<c:url value="/assets/user/img/6.png"/>"></a>
		</div>
	</div>
</section>


<!--
Footer
-->
 <%@include file="/WEB-INF/views/layout/user/footer.jsp"%>
</div><!-- /container -->

<div class="copyright">
<div class="container">
	<p class="pull-right">
		<a href="#"><img src= "<c:url value="/assets/user/img/maestro.png"/>" alt="payment"></a>
		<a href="#"><img src= "<c:url value="/assets/user/img/mc.png"/>" alt="payment"></a>
		<a href="#"><img src= "<c:url value="/assets/user/img/pp.png"/>" alt="payment"></a>
		<a href="#"><img src= "<c:url value="/assets/user/img/visa.png"/>" alt="payment"></a>
		<a href="#"><img src= "<c:url value="/assets/user/img/disc.png"/>" alt="payment"></a>
	</p>
	<span>Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
</div>
</div>
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/assets/user/ico/js/jquery.js"/>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js"/>"></script>
    <script src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js"/>"></script>
    <script src="<c:url value="/assets/user/js/shop.js"/>"></script>
  </body>
</html>