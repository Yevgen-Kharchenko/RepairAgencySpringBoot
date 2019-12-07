<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="orders"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
               <section class="section-top-60 section-sm-top-90">
            <div class="shell">
                <div class="range">
                    <div class="cell-md-10 cell-lg-8">
                        <h5><spring:message code="create.orders"/></h5>
                        <hr>
                        <form data-form-output="form-output-global" data-form-type="contact" method="post" action="#" class="rd-mailform">
                            <div class="range">
                                <div class="cell-sm-6">
                                    <div class="form-group">
                                        <label for="contact-first-name" class="form-label-outside"><spring:message code="repair.type"/></label>
                                        <input id="contact-first-name" type="text" name="first-name" data-constraints="@Required" class="form-control">
                                    </div>
                                </div>
                                                               <div class="cell-xs-12 offset-top-18">
                                    <div class="form-group">
                                        <label for="contact-message" class="form-label-outside"><spring:message code="please.send"/></label>
                                        <textarea id="contact-message" name="message" data-constraints="@Required" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="cell-xs-12 offset-top-30">
                                    <button type="submit" class="btn btn-primary"><spring:message code="send.message"/></button>
                                </div>
                            </div>
                        </form>
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