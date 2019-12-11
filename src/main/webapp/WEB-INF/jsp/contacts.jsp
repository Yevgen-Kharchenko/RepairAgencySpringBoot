<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="contacts"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
        
        <section class="section-60 section-sm-90">
            <div class="shell">
                <div class="range">
                    <div class="cell-md-8">
                        <h5><spring:message code="contacts"/></h5>
                        <hr>
                        <p><spring:message code="you.can.contact"/></p>
                        <p><spring:message code="we.would"/></p>
                        <div class="offset-top-50">
                            <form data-form-output="form-output-global" data-form-type="contact" method="post" action="under-construction" class="rd-mailform rd-mailform-mod-1">
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
                                    <div class="cell-xs-12 offset-top-18">
                                        <div class="form-group">
                                            <label for="contact-message" class="form-label-outside"><spring:message code="message"/></label>
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
                    <div class="cell-md-4">
                        <div class="range inset-lg-left-30">
                            <div class="cell-sm-6 cell-md-12">
                                <h5><spring:message code="social"/></h5>
                                <hr>
                                <ul class="list-inline list-inline-xxs">
                                    <li><a href="under-construction" class="icon icon-xs icon-circle icon-white icon-filled-facebook fa-facebook"></a></li>
                                    <li><a href="under-construction" class="icon icon-xs icon-circle icon-white icon-filled-twitter fa-twitter"></a></li>
                                    <li><a href="under-construction" class="icon icon-xs icon-circle icon-white icon-filled-google fa-google"></a></li>
                                    <li><a href="under-construction" class="icon icon-xs icon-circle icon-white icon-filled-linkedin fa-linkedin"></a></li>
                                    <li><a href="under-construction" class="icon icon-xs icon-circle icon-white icon-filled-instagram fa-instagram"></a></li>
                                </ul>
                                <div class="offset-top-30 offset-md-top-55">
                                    <h5><spring:message code="phone"/></h5>
                                    <hr>
                                    <address class="contact-info">
                                        <div class="unit unit-horizontal unit-spacing-xs">
                                            <div class="unit-left icon-adjust-vertical"><span class="icon icon-xs icon-primary mdi mdi-phone"></span></div>
                                            <div class="unit-body">
                                                <ul class="list-links">
                                                    <li><a href="callto:#" class="link-gray">1-800-1234-567</a></li>
                                                    <li><a href="callto:#" class="link-gray">1-800-3214-951</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </address>
                                </div>
                                <div class="offset-top-30 offset-md-top-55">
                                    <h5><spring:message code="address"/></h5>
                                    <hr>
                                    <address class="contact-info">
                                        <div class="unit unit-horizontal unit-spacing-xs">
                                            <div class="unit-left icon-adjust-vertical"><span class="icon icon-xs icon-primary mdi mdi-map-marker"></span></div>
                                            <div class="unit-body"><a href="under-construction" class="link-gray nowrap"><spring:message code="rosecrans.ave"/><br>
                                                <spring:message code="ca.90245"/></a></div>
                                        </div>
                                    </address>
                                </div>
                            </div>
                            <div class="cell-sm-6 cell-md-12 offset-top-30 offset-sm-top-0 offset-md-top-55">
                                <h5><spring:message code="open.hours"/></h5>
                                <hr>
                                <div class="offset-top-22">
                                    <div class="contact-info">
                                        <div class="unit unit-horizontal unit-spacing-xs">
                                            <div class="unit-left icon-adjust-vertical"><span class="icon icon-xs icon-primary mdi mdi-calendar-clock"></span></div>
                                            <div class="unit-body"><span class="text-gray"><spring:message code="mon.fri"/></span><span class="text-gray"><spring:message code="sat.sun"/></span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="offset-top-30 offset-md-top-55">
                                    <h5><spring:message code="email"/></h5>
                                    <hr>
                                    <div class="unit unit-horizontal unit-spacing-xs offset-top-22">
                                        <div class="unit-left icon-adjust-vertical"><span class="icon icon-xs icon-primary mdi mdi-email-outline"></span></div>
                                        <div class="unit-body"><a href="#89aa" class="link-primary"><span class="__cf_email__" data-cfemail="056c6b636a456160686a696c6b6e2b6a7762">demo@gmail.com</span></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="rd-google-map">
            <div class="overlay rd-google-map__model" onClick="style.pointerEvents='none'"></div>
            <iframe  class="rd-google-map__model" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.8404068987!2d-74.2581973675357!3d40.70583158554698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2zVGjDoG5oIHBo4buRIE5ldyBZb3JrLCBUaeG7g3UgYmFuZyBOZXcgWW9yaw!5e0!3m2!1svi!2s!4v1480613299202" style="border:0;scrollwheel: false;width:100%" allowfullscreen></iframe>
        </div>
    </main>
    <c:import url="footer-part.jsp"/>
</div>
<c:import url="form-output-global.jsp"/>
</body>
<!-- End Google Tag Manager -->
</html>