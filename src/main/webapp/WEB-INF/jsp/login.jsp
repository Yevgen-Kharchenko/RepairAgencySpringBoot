
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
                                <li><a href="registration" ><spring:message code="register"/></a></li>
                            </ul>
                            <div class="resp-tabs-container offset-top-40">
                                <div class="animated fadeIn">

                                    <form:form class=" text-left" action="login" method="post">
                                        <div class="form-group">
                                            <label for="username" class="form-label-outside"><spring:message code="email"/></label>
                                            <form:input  path="username" type="text" name="login" data-constraints="@Required" class="form-control"/>
                                            <form:errors path="username" />
                                        </div>
                                        <div class="form-group">
                                            <label for="password" class="form-label-outside"><spring:message code="password"/></label>
                                            <form:input path="password"  type="password" name="password" data-constraints="@Required" class="form-control"/>
                                            <form:errors path="password" cssClass="text-danger"/>
                                        </div>
                                        <div class="group group-middle offset-top-30 text-center text-xs-left">
                                            <button type="submit" class="btn btn-primary"><spring:message code="sign.in"/></button>

                                        </div>
                                    </form:form>
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