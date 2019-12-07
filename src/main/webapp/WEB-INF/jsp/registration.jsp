
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
                                <div class="offset-top-25">
                                    <form:form class="text-left" action="registration" method="post" modelAttribute="registrationForm">
                                        <div class="form-group">
                                            <label for="first_name" class="form-label-outside"><spring:message code="first.name"/></label>
                                            <form:input  path="first_name" type="text" name="first-name" data-constraints="@Required" class="form-control"/>
                                            <form:errors path="first_name" />
                                        </div>
                                        <div class="form-group">
                                            <label for="last_name" class="form-label-outside"><spring:message code="last.name"/></label>
                                            <form:input path="last_name" type="text" name="last-name" data-constraints="@Required" class="form-control"/>
                                            <form:errors path="last_name" />
                                        </div>
                                        <div class="form-group">
                                            <label for="phone" class="form-label-outside"><spring:message code="phone"/></label>
                                            <form:input path="phone" type="text" name="phone" data-constraints="@Required @Numeric" class="form-control"/>
                                            <form:errors path="phone" />
                                        </div>
                                        <div class="form-group offset-top-18">
                                            <label for="login" class="form-label-outside"><spring:message code="email"/></label>
                                            <form:input path="login" type="text" name="login" data-constraints="@Email @Required" class="form-control"/>
                                            <form:errors path="login" />
                                        </div>
                                        <div class="form-group offset-top-18">
                                            <label for="password" class="form-label-outside"><spring:message code="password"/></label>
                                            <form:input type="password" path="password" name="password" data-constraints="@Required" class="form-control"/>
                                            <form:errors path="password" />
                                        </div>
                                        <div class="form-group offset-top-18">
                                            <label for="password_confirm" class="form-label-outside"><spring:message code="confirm.password"/></label>
                                            <form:input  path="password_confirm" type="password" name="password" data-constraints="@Required" class="form-control"/>
                                            <form:errors path="password_confirm" />
                                        </div>
                                        <div class="offset-top-18 text-center">
                                            <button type="submit" class="btn btn-primary"><spring:message code="register"/></button>
                                        </div>
                                    </form:form>
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