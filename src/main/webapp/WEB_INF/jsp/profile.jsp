<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="profile2"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
<section class="section-top-20 section-sm-top-40 section-sm-bottom-110">
      <div class="shell">
        <div class="range">
          <div class="cell-md-10 cell-lg-8">
            <h5><spring:message code="edit.profile"/></h5>
            <hr>
            <form data-form-output="form-output-global" data-form-type="contact" method="post" action="#" class="rd-mailform">
              <div class="range">
                <div class="cell-sm-6">
                  <div class="form-group">
                    <label for="contact-first-name" class="form-label-outside"><spring:message code="first.name"/></label>
                    <input id="contact-first-name" type="text" name="first-name" data-constraints="@Required" class="form-control">
                  </div>
                </div>
                <div class="cell-sm-6 offset-top-18 offset-sm-top-0">
                  <div class="form-group">
                    <label for="contact-last-name" class="form-label-outside"><spring:message code="last.name"/></label>
                    <input id="contact-last-name" type="text" name="last-name" data-constraints="@Required" class="form-control">
                  </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                  <div class="form-group">
                    <label for="contact-email" class="form-label-outside"><spring:message code="email"/></label>
                    <input id="contact-email" type="email" name="email" data-constraints="@Email @Required" class="form-control">
                  </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                  <div class="form-group">
                    <label for="contact-phone" class="form-label-outside"><spring:message code="phone"/></label>
                    <input id="contact-phone" type="text" name="phone" data-constraints="@Required @Numeric" class="form-control">
                  </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                  <div class="form-group">
                    <label for="register-password" class="form-label-outside"><spring:message code="password"/></label>
                        <input id="register-password" type="password" name="password" data-constraints="@Required" class="form-control">
                  </div>
                </div>
                <div class="cell-sm-6 offset-top-18">
                  <div class="form-group">
                    <label for="register-confirm-password" class="form-label-outside"><spring:message code="confirm.password"/></label>
                        <input id="register-confirm-password" type="password" name="password" data-constraints="@Required" class="form-control">
                  </div>
                </div>
				</div>
                <div class="cell-xs-12 offset-top-30">
                  <button type="submit" class="btn btn-primary"><spring:message code="edit.profile"/></button>
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