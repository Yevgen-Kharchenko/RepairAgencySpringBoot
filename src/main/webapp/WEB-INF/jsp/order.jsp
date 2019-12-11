<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="order"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
        <div class="range range-sm-center"><h5>
            <c:if test="${not empty notification}">
                <c:out value ="${notification}" />
            </c:if>
        </h5></div>
               <section class="section-top-30 section-sm-top-60">
            <div class="shell">
                <div class="range">
                    <div class="cell-md-10 cell-lg-8">
                        <h5><spring:message code="create.order"/></h5>
                        <hr>
                        <form:form data-form-output="form-output-global" method="post" action="order" modelAttribute="orderForm">
                            <div class="range">
                                <div class="cell-sm-6">
                                    <div class="form-group">
                                        <label  class="form-label-outside"><spring:message code="repair.type"/></label>
                                        <form:select  path="repairTypeName"  class="form-control">
                                            <form:option value="NONE" label="--- Select ---" />
                                            <form:options items="${repairTypesNames}" />

                                        </form:select>

                                    </div>
                                </div>
                                                               <div class="cell-xs-12 offset-top-18">
                                    <div class="form-group">
                                        <label for="contact-message" class="form-label-outside"><spring:message code="please.send"/></label>
                                        <form:textarea path="message" data-constraints="@Required" class="form-control"></form:textarea>
                                    </div>
                                </div>
                                <div class="cell-xs-12 offset-top-30">
                                    <button type="submit" class="btn btn-primary"><spring:message code="send.message"/></button>
                                </div>
                            </div>
                        </form:form>
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