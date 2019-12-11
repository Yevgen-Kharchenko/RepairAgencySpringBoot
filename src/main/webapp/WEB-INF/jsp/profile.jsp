<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="profile2"/></title>
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
<section class="section-top-20 section-sm-top-40 section-sm-bottom-110">
      <div class="shell">
        <div class="range">
          <div class="cell-md-10 cell-lg-8">
            <h5><spring:message code="edit.profile"/></h5>
            <hr>
            <form:form data-form-output="form-output-global" data-form-type="contact" method="post" action="profile" modelAttribute="profileForm">
              <div class="range">
                <div class="cell-sm-6">
                  <div class="form-group offset-top-18">
                    <label for="first_name" class="form-label-outside"><spring:message code="first.name"/></label>
                    <form:input  path="first_name" value="${currentUser.firstName}" type="text" name="first-name" data-constraints="@Required" class="form-control"/>
                    <form:errors path="first_name" />
                  </div>
                </div>
                <div class="cell-sm-6 offset-top-18 offset-sm-top-0">
                  <div class="form-group offset-top-18">
                    <label for="last_name" class="form-label-outside"><spring:message code="last.name"/></label>
                    <form:input path="last_name" value="${currentUser.lastName}" type="text" name="last-name" data-constraints="@Required" class="form-control"/>
                    <form:errors path="last_name" />
                  </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                  <div class="form-group offset-top-18">
                    <label for="login" class="form-label-outside"><spring:message code="email"/></label>
                    <form:input path="login" value="${currentUser.login}" type="text" name="login" data-constraints="@Email @Required" class="form-control"/>
                    <form:errors path="login" />
                  </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                  <div class="form-group offset-top-18">
                    <label for="phone" class="form-label-outside"><spring:message code="phone"/></label>
                    <form:input path="phone" value="${currentUser.phone}" type="text" name="phone" data-constraints="@Required @Numeric" class="form-control"/>
                    <form:errors path="phone" />
                  </div>
                </div>

                  <div class="offset-top-18 text-center">
                    <button type="submit" class="btn btn-primary"><spring:message code="edit.profile"/></button>
                  </div>
                </div>
              </div>
            </form:form>

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