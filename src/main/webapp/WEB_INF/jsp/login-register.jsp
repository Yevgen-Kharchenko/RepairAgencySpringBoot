<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="login"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
<div class="range range-sm-center"><h5>
    <c:if test="${not empty error}">
        <c:out value ="${error}"/>
    </c:if>
</h5></div>
        <section class="section-10 section-sm-top-10">
            <div class="shell">
                <div class="range range-sm-center">
                    <div class="cell-sm-6 cell-md-5 cell-lg-4">
                        <div class="responsive-tabs responsive-tabs-default responsive-tabs-horizontal responsive-tabs-silver-chalice">
                            <ul class="resp-tabs-list text-center">
                                <li><spring:message code="login"/></li>
                                <li><spring:message code="register"/></li>
                            </ul>
                            <div class="resp-tabs-container offset-top-40">
                                <div class="animated fadeIn">

                                    <form class="rd-mailform text-left" action="login" method="post">
                                        <div class="form-group">
                                            <label for="login-email" class="form-label-outside"><spring:message code="email"/></label>
                                            <input id="login-email" type="text" name="login" data-constraints="@Required" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="login-password" class="form-label-outside"><spring:message code="password"/></label>
                                            <input id="login-password" type="password" name="password" data-constraints="@Required" class="form-control">
                                        </div>
                                        <div class="group group-middle offset-top-30 text-center text-xs-left">
                                            <button type="submit" class="btn btn-primary"><spring:message code="sign.in"/></button>
                                            <p class="reveal-block reveal-xs-inline-block"><spring:message code="or"/></p>
                                            <ul class="list-inline list-inline-xxs">
                                                <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-facebook fa-facebook"></a></li>
                                                <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-twitter fa-twitter"></a></li>
                                                <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-google fa-google"></a></li>
                                            </ul>
                                        </div>
                                    </form>
                                </div>

                                <div class="animated fadeIn">
                                    <div class="text-center">
                                        <p><spring:message code="enter.with"/></p>
                                        <ul class="list-inline list-inline-xxs offset-top-15">
                                            <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-facebook fa-facebook"></a></li>
                                            <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-twitter fa-twitter"></a></li>
                                            <li><a href="503" class="icon icon-xs icon-circle icon-white icon-filled-google fa-google"></a></li>
                                        </ul>
                                        <p class="offset-top-7"><spring:message code="or"/></p>
                                    </div>
                                    <div class="offset-top-25">
                                        <form class="rd-mailform text-left" action="register" method="post">
											<div class="form-group">
												<label for="contact-first-name" class="form-label-outside"><spring:message code="first.name"/></label>
												<input id="contact-first-name" type="text" name="first-name" data-constraints="@Required" class="form-control">
											</div>
											<div class="form-group">
												<label for="contact-last-name" class="form-label-outside"><spring:message code="last.name"/></label>
												<input id="contact-last-name" type="text" name="last-name" data-constraints="@Required" class="form-control">
											</div>
											<div class="form-group">
												<label for="contact-phone" class="form-label-outside"><spring:message code="phone"/></label>
												<input id="contact-phone" type="text" name="phone" data-constraints="@Required @Numeric" class="form-control">
											</div>
                                            <div class="form-group">
                                                <label for="register-username" class="form-label-outside">Username</label>
                                                <input id="register-username" type="text" name="username" data-constraints="@Required" class="form-control">
                                            </div>
                                            <div class="form-group offset-top-18">
                                                <label for="register-email" class="form-label-outside"><spring:message code="email"/></label>
                                                <input id="register-email" type="text" name="login" data-constraints="@Email @Required" class="form-control">
                                            </div>
                                            <div class="form-group offset-top-18">
                                                <label for="register-password" class="form-label-outside"><spring:message code="password"/></label>
                                                <input id="register-password" type="password" name="password" data-constraints="@Required" class="form-control">
                                            </div>
											<div class="form-group offset-top-18">
												<label for="register-confirm-password" class="form-label-outside"><spring:message code="confirm.password"/></label>
												<input id="register-confirm-password" type="password" name="password" data-constraints="@Required" class="form-control">
											</div>
                                            <div class="offset-top-18 text-center">
                                                <button type="submit" class="btn btn-primary"><spring:message code="register"/></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
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