<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="profile3"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
      <c:if test="${not empty notification}">
        <c:out value ="${notification}" />
      </c:if>
<section class="section-top-20 section-sm-top-40 section-sm-bottom-110">
      <div class="shell">
        <div class="range">
          <div class="cell-md-10 cell-lg-8">
            <h5><spring:message code="edit.user.profile"/></h5>
            <hr>
            <form:form data-form-output="form-output-global" data-form-type="contact" method="post" action="user-profile" modelAttribute="userProfileForm">
              <div class="range">
                <div class="cell-sm-6">
                  <div class="form-group offset-top-18">
                    <label for="first_name" class="form-label-outside"><spring:message code="first.name"/></label>
                    <form:input  path="first_name" value="${userProfile.firstName}" type="text" name="first-name" data-constraints="@Required" class="form-control"/>
                    <form:errors path="first_name" />
                </div>
                </div>
                <div class="cell-sm-6 offset-top-18 offset-sm-top-0">
                    <div class="form-group offset-top-18">
                        <label for="last_name" class="form-label-outside"><spring:message code="last.name"/></label>
                        <form:input path="last_name" value="${userProfile.lastName}" type="text" name="last-name" data-constraints="@Required" class="form-control"/>
                        <form:errors path="last_name" />
                    </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                    <div class="form-group offset-top-18">
                        <label for="login" class="form-label-outside"><spring:message code="email"/></label>
                        <form:input path="login" value="${userProfile.login}" type="text" name="login" data-constraints="@Email @Required" class="form-control"/>
                        <form:errors path="login" />
                    </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                    <div class="form-group offset-top-18">
                        <label for="phone" class="form-label-outside"><spring:message code="phone"/></label>
                        <form:input path="phone" value="${userProfile.phone}" type="text" name="phone" data-constraints="@Required @Numeric" class="form-control"/>
                        <form:errors path="phone" />
                    </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                  <div class="form-group">
                    <label for="role" class="form-label-outside"><spring:message code="role"/></label>
                      <form:select path="role"  class="form-control">
                          <form:options items="${roleNames}" />
                      </form:select>
                  </div>
                </div>


                <div class="cell-xs-12 offset-top-30">
                    <div class="offset-top-35 offset-sm-top-50">
                        <div class="group-xl"><a href="admin" class="btn btn-primary-variant-1 btn-mod-1"><spring:message code="back.account"/></a>
                            <a href="user-delete?id=${userProfile.id}" class="btn btn-primary-variant-1 btn-mod-2"><spring:message code="delete.user"/></a>
                            <form:input type="hidden" path="userId" value="${userProfile.id}" />
                            <button type="submit" class="btn btn-primary "><spring:message code="edit.user.profile"/></button>

                        </div>
                    </div>
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