<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="our.team"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
	 
        <section class="section-80 section-md-110 bg-gray-lighter">
            <div class="shell">
                <div class="range text-center">
                    <div class="cell-xs-12">
                        <h2><spring:message code="our.team"/></h2>
                        <div class="divider divider-md divider-primary"></div>
                    </div>
                </div>
                <div class="range range-xs-center">
                    <div class="cell-xs-10 cell-sm-6 cell-md-4">
                        <div class="thumbnail-variant-2">
                            <figure class="thumbnail-image"><img src="images/team-7-370x370.jpg" alt="" width="370" height="370"/> </figure>
                            <div class="caption">
                                <h4><a href="team-member-profile"><spring:message code="philip.hanso"/></a></h4>
                                <p class="text-silver-chalice"><spring:message code="admin"/></p>
                                <ul class="list-inline list-inline-xxs">
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-facebook fa-facebook"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-twitter fa-twitter"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-google fa-google"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-linkedin fa-linkedin"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-instagram fa-instagram"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="cell-xs-10 cell-sm-6 cell-md-4 offset-top-55 offset-sm-top-0">
                        <div class="thumbnail-variant-2">
                            <figure class="thumbnail-image"><img src="images/team-6-370x370.jpg" alt="" width="370" height="370"/> </figure>
                            <div class="caption">
                                <h4><a href="team-member-profile"><spring:message code="adam.fowler"/></a></h4>
                                <p class="text-silver-chalice"><spring:message code="manager"/></p>
                                <ul class="list-inline list-inline-xxs">
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-facebook fa-facebook"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-twitter fa-twitter"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-google fa-google"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-linkedin fa-linkedin"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-instagram fa-instagram"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="cell-xs-10 cell-sm-6 cell-md-4 offset-top-55 offset-md-top-0">
                        <div class="thumbnail-variant-2">
                            <figure class="thumbnail-image"><img src="images/team-5-370x370.jpg" alt="" width="370" height="370"/> </figure>
                            <div class="caption">
                                <h4><a href="team-member-profile"><spring:message code="phillip.miller"/></a></h4>
                                <p class="text-silver-chalice"><spring:message code="master"/></p>
                                <ul class="list-inline list-inline-xxs">
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-facebook fa-facebook"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-twitter fa-twitter"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-google fa-google"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-linkedin fa-linkedin"></a></li>
                                    <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-instagram fa-instagram"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
    </main>
    <c:import url="footer-part.jsp"/>
</div>
<c:import url="form-output-global.jsp"/>
</body>
<!-- End Google Tag Manager -->
</html>