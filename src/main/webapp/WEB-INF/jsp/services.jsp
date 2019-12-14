<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="services"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">
        
        <section class="section-60 section-sm-top-90 section-sm-bottom-110">
            <div class="shell">
                <div class="range range-sm-right">
                    <div class="cell-xs-12">
                        <div data-custom-hash="true" class="responsive-tabs responsive-tabs-default responsive-tabs-vertical responsive-tabs-vertical-1 responsive-tabs-primary">
                            <ul class="resp-tabs-list">
                                <li><a href="#ice-maker-repair"><spring:message code="ice.maker"/></a></li>
                                <li><a href="#stove-repair"><spring:message code="stove.repair"/></a></li>
                                <li><a href="#appliance-parts"><spring:message code="appliance.parts"/></a></li>
                                <li><a href="#microwave-repair"><spring:message code="microwave.repair"/></a></li>
                                <li><a href="#washer-repair"><spring:message code="washer.repair"/></a></li>
                                <li><a href="#refrigerator-repair"><spring:message code="refrigerator.repair"/></a></li>
                                <li><a href="#range-hood-repair"><spring:message code="range"/></a></li>
                            </ul>
                            <div class="resp-tabs-container">
                                <div class="tab">
                                    <div class="box-custom-variant-1">
                                        <div class="box-header">
                                            <h3><spring:message code="ice.maker"/></h3>
                                        </div>
                                        <div class="box-image"><img src="images/services-1-146x156.png" alt="" width="146" height="156"/> </div>
                                        <div class="box-content"><a href="order" class="btn btn-primary"><spring:message code="order.repair"/></a>
                                            <address class="contact-info-inline">
                                                <p><spring:message code="or.call"/></p>
                                                <a href="callto:#" class="link link-md link-dark">1-800-1234-567</a>
                                            </address>
                                        </div>
                                    </div>
                                    <p><spring:message code="services1"/></p>
                                    <div class="offset-top-10">
                                        <div class="inset-sm-left-24">
                                            <ul class="list-marked-variant-2">
                                                <li><spring:message code="services17"/></li>
                                                <li><spring:message code="services18"/></li>
                                                <li><spring:message code="services19"/></li>
                                                <li><spring:message code="services20"/></li>
                                                <li><spring:message code="services21"/></li>
                                                <li><spring:message code="services22"/></li>
                                                <li><spring:message code="services23"/></li>
                                                <li><spring:message code="services24"/></li>
                                                <li><spring:message code="services25"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p> <spring:message code="services2"/></p>
                                </div>
                                <div class="tab">
                                    <div class="box-custom-variant-1">
                                        <div class="box-header">
                                            <h3><spring:message code="stove.repair"/></h3>
                                        </div>
                                        <div class="box-image"><img src="images/services-2-146x156.png" alt="" width="146" height="156"/> </div>
                                        <div class="box-content"><a href="order" class="btn btn-primary"><spring:message code="order.repair"/></a>
                                            <address class="contact-info-inline">
                                                <p><spring:message code="or.call"/></p>
                                                <a href="callto:#" class="link link-md link-dark">1-800-1234-567</a>
                                            </address>
                                        </div>
                                    </div>
                                    <p><spring:message code="services3"/></p>
                                    <div class="offset-top-10">
                                        <div class="inset-sm-left-24">
                                            <ul class="list-marked-variant-2">
                                                <li><spring:message code="services26"/></li>
                                                <li><spring:message code="services27"/></li>
                                                <li><spring:message code="services28"/></li>
                                                <li><spring:message code="services29"/></li>
                                                <li><spring:message code="services30"/></li>
                                                <li><spring:message code="services31"/></li>
                                                <li><spring:message code="services32"/></li>
                                                <li><spring:message code="services33"/></li>
                                                <li><spring:message code="services34"/></li>
                                                <li><spring:message code="services35"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p><spring:message code="services4"/></p>
                                </div>
                                <div class="tab">
                                    <div class="box-custom-variant-1 box-custom-no-image">
                                        <div class="box-header">
                                            <h3><spring:message code="appliance.parts"/></h3>
                                        </div>
                                        <div class="box-content"><a href="order" class="btn btn-primary"><spring:message code="order.repair"/></a>
                                            <address class="contact-info-inline">
                                                <p><spring:message code="or.call"/></p>
                                                <a href="callto:#" class="link link-md link-dark">1-800-1234-567</a>
                                            </address>
                                        </div>
                                    </div>
                                    <p><spring:message code="services5"/></p>
                                    <p><spring:message code="services6"/></p>
                                    <p><spring:message code="services7"/></p>
                                </div>
                                <div class="tab">
                                    <div class="box-custom-variant-1">
                                        <div class="box-header">
                                            <h3><spring:message code="microwave.repair"/></h3>
                                        </div>
                                        <div class="box-image"><img src="images/services-3-146x156.png" alt="" width="146" height="156"/> </div>
                                        <div class="box-content"><a href="order" class="btn btn-primary"><spring:message code="order.repair"/></a>
                                            <address class="contact-info-inline">
                                                <p><spring:message code="or.call"/></p>
                                                <a href="callto:#" class="link link-md link-dark">1-800-1234-567</a>
                                            </address>
                                        </div>
                                    </div>
                                    <p><spring:message code="services8"/></p>
                                    <div class="offset-top-10">
                                        <div class="inset-sm-left-24">
                                            <ul class="list-marked-variant-2">
                                                <li><spring:message code="services36"/></li>
                                                <li><spring:message code="services37"/></li>
                                                <li><spring:message code="services38"/></li>
                                                <li><spring:message code="services39"/></li>
                                                <li><spring:message code="services40"/></li>
                                                <li><spring:message code="services41"/></li>
                                                <li><spring:message code="services42"/></li>
                                                <li><spring:message code="services43"/></li>
                                                <li><spring:message code="services44"/></li>
                                                <li><spring:message code="services45"/></li>
                                                <li><spring:message code="services46"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p><spring:message code="services9"/></p>
                                </div>
                                <div class="tab">
                                    <div class="box-custom-variant-1">
                                        <div class="box-header">
                                            <h3><spring:message code="washer.repair"/></h3>
                                        </div>
                                        <div class="box-image"><img src="images/services-4-146x156.png" alt="" width="146" height="156"/> </div>
                                        <div class="box-content"><a href="order" class="btn btn-primary"><spring:message code="order.repair"/></a>
                                            <address class="contact-info-inline">
                                                <p><spring:message code="or.call"/></p>
                                                <a href="callto:#" class="link link-md link-dark">1-800-1234-567</a>
                                            </address>
                                        </div>
                                    </div>
                                    <p><spring:message code="services10"/></p>
                                    <div class="offset-top-10">
                                        <div class="inset-sm-left-24">
                                            <ul class="list-marked-variant-2">
                                                <li><spring:message code="services47"/></li>
                                                <li><spring:message code="services48"/></li>
                                                <li><spring:message code="services49"/></li>
                                                <li><spring:message code="services50"/></li>
                                                <li><spring:message code="services51"/></li>
                                                <li><spring:message code="services52"/></li>
                                                <li><spring:message code="services53"/></li>
                                                <li><spring:message code="services54"/></li>
                                                <li><spring:message code="services55"/></li>
                                                <li><spring:message code="services56"/></li>
                                                <li><spring:message code="services57"/></li>
                                                <li><spring:message code="services58"/></li>
                                                <li><spring:message code="services59"/></li>
                                                <li><spring:message code="services60"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p><spring:message code="services11"/></p>
                                </div>
                                <div class="tab">
                                    <div class="box-custom-variant-1">
                                        <div class="box-header">
                                            <h3><spring:message code="refrigerator.repair"/></h3>
                                        </div>
                                        <div class="box-image"><img src="images/services-5-146x156.png" alt="" width="146" height="156"/> </div>
                                        <div class="box-content"><a href="order" class="btn btn-primary"><spring:message code="order.repair"/></a>
                                            <address class="contact-info-inline">
                                                <p><spring:message code="or.call"/></p>
                                                <a href="callto:#" class="link link-md link-dark">1-800-1234-567</a>
                                            </address>
                                        </div>
                                    </div>
                                    <p><spring:message code="services12"/></p>
                                    <div class="offset-top-10">
                                        <div class="inset-sm-left-24">
                                            <ul class="list-marked-variant-2">
                                                <li><spring:message code="services61"/></li>
                                                <li><spring:message code="services62"/></li>
                                                <li><spring:message code="services63"/></li>
                                                <li><spring:message code="services64"/></li>
                                                <li><spring:message code="services65"/></li>
                                                <li><spring:message code="services66"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p><spring:message code="services13"/></p>
                                    <p><spring:message code="services14"/></p>
                                </div>
                                <div class="tab">
                                    <div class="box-custom-variant-1">
                                        <div class="box-header">
                                            <h3><spring:message code="range"/></h3>
                                        </div>
                                        <div class="box-image"><img src="images/services-6-146x156.png" alt="" width="146" height="156"/> </div>
                                        <div class="box-content"><a href="order" class="btn btn-primary"><spring:message code="order.repair"/></a>
                                            <address class="contact-info-inline">
                                                <p><spring:message code="or.call"/></p>
                                                <a href="callto:#" class="link link-md link-dark">1-800-1234-567</a>
                                            </address>
                                        </div>
                                    </div>
                                    <p><spring:message code="services15"/></p>
                                    <div class="offset-top-10">
                                        <div class="inset-sm-left-24">
                                            <ul class="list-marked-variant-2">
                                                <li><spring:message code="services67"/></li>
                                                <li><spring:message code="services68"/></li>
                                                <li><spring:message code="services69"/></li>
                                                <li><spring:message code="services70"/></li>
                                                <li><spring:message code="services71"/></li>
                                                <li><spring:message code="services72"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p> <spring:message code="services16"/></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cell-sm-8 cell-md-9 offset-top-55 offset-sm-top-88">
                        <div class="range range-condensed">
                            <div data-items="1" data-sm-items="3" data-md-items="3" data-lg-items="4" data-stage-padding="0" data-loop="true" data-margin="30" data-sm-margin="73" data-nav="false" data-dots="true" data-sm-dots-each="2" class="owl-carousel owl-carousel-centered">
                                <div class="item"><a href="503" class="link-image link-image-variant-2"><img src="images/services-7-175x39.png" alt="" width="175" height="39"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-variant-2"><img src="images/services-8-175x39.png" alt="" width="175" height="39"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-variant-2"><img src="images/services-9-175x39.png" alt="" width="175" height="39"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-variant-2"><img src="images/services-10-175x39.png" alt="" width="175" height="39"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-variant-2"><img src="images/services-11-175x39.png" alt="" width="175" height="39"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-variant-2"><img src="images/services-9-175x39.png" alt="" width="175" height="39"/></a></div>
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