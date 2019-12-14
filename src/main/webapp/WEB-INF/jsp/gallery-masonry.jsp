<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="gallery"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">

        <section class="section-80 section-sm-90">
            <div class="container">
                <div class="row text-center">
                    <div class="col-xs-12">
                        <h2><spring:message code="gallery."/></h2>
                        <div class="divider divider-md divider-primary"></div>
                    </div>
                </div>
                <div class="row offset-top-35 offset-sm-top-50">
                    <div class="col-xs-12">
                        <div class="isotope-filters isotope-filters-horizontal">
                            <ul class="list-inline">
                                <li><a data-isotope-filter="*" data-isotope-group="gallery" href="under-construction" class="active"><spring:message code="all"/></a></li>
                                <li><a data-isotope-filter="Category 1" data-isotope-group="gallery" href="under-construction"><spring:message code="tab"/> 1</a></li>
                                <li><a data-isotope-filter="Category 2" data-isotope-group="gallery" href="under-construction"><spring:message code="tab"/> 2</a></li>
                                <li><a data-isotope-filter="Category 3" data-isotope-group="gallery" href="under-construction"><spring:message code="tab"/> 3</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 offset-top-30">
                        <div data-isotope-layout="masonry" data-isotope-group="gallery" data-photo-swipe-gallery="gallery" class="row isotope isotope-spacing-1">
                            <div data-filter="Category 3" class="col-xs-12 col-sm-6 col-md-4 isotope-item">
                                <div class="thumbnail thumbnail-variant-4">
                                    <figure><img src="images/home-16-370x247.jpg" alt="" width="370" height="240"/> </figure>
                                    <a href="images/gallery-1-original-1200x800.jpg" data-photo-swipe-item="" data-size="1200x800" class="thumbnail-original-link"></a>
                                    <div class="caption"><a href="under-construction" class="thumbnail-link"></a>
                                        <div class="caption-text">
                                            <h6><spring:message code="professional.consultations"/></h6>
                                            <p><spring:message code="looking.for"/></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-filter="Category 2" class="col-xs-12 col-sm-6 col-md-4 isotope-item">
                                <div class="thumbnail thumbnail-variant-4">
                                    <figure><img src="images/gallery-masonry-4-370x510.jpg" alt="" width="370" height="510"/> </figure>
                                    <a href="images/gallery-1-original-1200x800.jpg" data-photo-swipe-item="" data-size="1200x800" class="thumbnail-original-link"></a>
                                    <div class="caption"><a href="under-construction" class="thumbnail-link"></a>
                                        <div class="caption-text">
                                            <h6><spring:message code="gas.stoves"/></h6>
                                            <p><spring:message code="if.you.have"/></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-filter="Category 1" class="col-xs-12 col-sm-6 col-md-4 isotope-item">
                                <div class="thumbnail thumbnail-variant-4">
                                    <figure><img src="images/home-17-370x247.jpg" alt="" width="370" height="240"/> </figure>
                                    <a href="images/gallery-1-original-1200x800.jpg" data-photo-swipe-item="" data-size="1200x800" class="thumbnail-original-link"></a>
                                    <div class="caption"><a href="under-construction" class="thumbnail-link"></a>
                                        <div class="caption-text">
                                            <h6><spring:message code="parts.department"/></h6>
                                            <p><spring:message code="we.have"/></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-filter="Category 3" class="col-xs-12 col-sm-6 col-md-4 isotope-item">
                                <div class="thumbnail thumbnail-variant-4">
                                    <figure><img src="images/gallery-masonry-2-370x510.jpg" alt="" width="370" height="510"/> </figure>
                                    <a href="images/gallery-1-original-1200x800.jpg" data-photo-swipe-item="" data-size="1200x800" class="thumbnail-original-link"></a>
                                    <div class="caption"><a href="under-construction" class="thumbnail-link"></a>
                                        <div class="caption-text">
                                            <h6><spring:message code="kitchen.equipment"/></h6>
                                            <p><spring:message code="this.type"/></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-filter="Category 1" class="col-xs-12 col-sm-6 col-md-4 isotope-item">
                                <div class="thumbnail thumbnail-variant-4">
                                    <figure><img src="images/gallery-masonry-6-370x510.jpg" alt="" width="370" height="510"/> </figure>
                                    <a href="images/gallery-1-original-1200x800.jpg" data-photo-swipe-item="" data-size="1200x800" class="thumbnail-original-link"></a>
                                    <div class="caption"><a href="under-construction" class="thumbnail-link"></a>
                                        <div class="caption-text">
                                            <h6><spring:message code="small.repair"/></h6>
                                            <p><spring:message code="sometimes"/></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-filter="Category 2" class="col-xs-12 col-sm-6 col-md-4 isotope-item">
                                <div class="thumbnail thumbnail-variant-4">
                                    <figure><img src="images/home-18-370x247.jpg" alt="" width="370" height="240"/> </figure>
                                    <a href="images/gallery-1-original-1200x800.jpg" data-photo-swipe-item="" data-size="1200x800" class="thumbnail-original-link"></a>
                                    <div class="caption"><a href="under-construction" class="thumbnail-link"></a>
                                        <div class="caption-text">
                                            <h6><spring:message code="domestic.equipment"/></h6>
                                            <p><spring:message code="have.a.problem"/></p>
                                        </div>
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