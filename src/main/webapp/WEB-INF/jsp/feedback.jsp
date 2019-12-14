<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="feedback"/></title>
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

        <section class="section-top-60 section-sm-top-90">
            <div class="shell">
                <div class="range">
                    <div class="cell-md-10 cell-lg-8">
                        <h5><spring:message code="leave"/></h5>
                        <form:form data-form-output="form-output-global" method="post" action="feedback" modelAttribute="feedbackForm" >
                            <div class="range">
                               
                                <div class="cell-xs-12 offset-top-18">
                                    <div class="form-group">
                                        <label for="contact-message" class="form-label-outside"><spring:message code="message"/></label>
                                        <form:textarea path="message"  data-constraints="@Required" class="form-control"></form:textarea>
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

        <section class="section-60 section-sm-top-110 section-sm-bottom-100">
            <div class="shell">
                <div class="range text-center">
                    <div class="cell-xs-12">
                        <h2><spring:message code="happy.customer.testimonials"/></h2>
                        <div class="divider divider-md divider-primary"></div>
                    </div>
                </div>
                <div class="range">
                    <div data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="4" data-stage-padding="15"
                         data-loop="true" data-margin="30" data-nav="false" data-dots="true" data-md-dots-each="2"
                         class="owl-carousel">

                        <c:forEach items="${feedback}" var="feedback">
                            <div class="item">
                                <blockquote class="quote-variant-1">
                                    <div class="quote-meta">
                                        <div class="unit unit-spacing-xs unit-middle unit-horizontal">
                                            <div class="unit-left">
                                                <figure class="quote-image"><img src="images/defaultuser.jpg" alt=""
                                                                                 width="47" height="47"/></figure>
                                            </div>
                                            <div class="unit-body"><cite>${feedback.user.firstName} ${feedback.user.lastName}</cite>
                                                <p class="small">${feedback.date}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="quote-body">
                                        <p><q>${feedback.text}</q></p>
                                    </div>
                                </blockquote>
                            </div>
                        </c:forEach>

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