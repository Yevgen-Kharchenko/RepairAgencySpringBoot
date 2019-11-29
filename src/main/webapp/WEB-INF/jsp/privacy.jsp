<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="privacy"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
     
        <section class="section-60">
            <div class="shell">
                <div class="range">
                    <div class="cell-xs-12">
						<div class="text-sm-left">
                            <h1><spring:message code="privacy.policy"/></h1>
                        </div>
                        <dl class="list-terms">
                            <dt class="h6"><spring:message code="pp1"/></dt>
                            <dd> <spring:message code="pp2"/></dd>
                            <dt class="h6"><spring:message code="pp3"/></dt>
                            <dd><spring:message code="pp4"/></dd>
                            <dt class="h6"><spring:message code="pp5"/></dt>
                            <dd><spring:message code="pp6"/></dd>
                            <dt class="h6"><spring:message code="pp7"/></dt>
                            <dd> <spring:message code="pp8"/></dd>
                            <dt class="h6"><spring:message code="pp9"/></dt>
                            <dd><spring:message code="pp10"/> </dd>
                            <dt class="h6"><spring:message code="pp11"/></dt>
                            <dd> <spring:message code="pp12"/></dd>
                        </dl>
                        <a href="#9fbc" class="privacy-link"><span class="__cf_email__" data-cfemail="2757554e5146445e6743424a484b4e494c09485540">demo@gmail.com</span></a> </div>
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