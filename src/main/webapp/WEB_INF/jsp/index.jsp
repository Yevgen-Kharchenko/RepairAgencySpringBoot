<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title>
        <spring:message code="home"/>
    </title>
    <c:import url="head-part.jsp"/>
</head>

<body>

<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">


        <div data-autoplay="false" data-slide-effect="fade" class="swiper-container swiper-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="images/1.jpg" alt="" width="1920" height="600"/>
                    <div class="swiper-slide-caption">
                        <div class="shell text-center text-sm-left">
                            <div class="range">
                                <div class="cell-sm-8 cell-md-8 cell-lg-9">
                                    <h1><br class="veil reveal-sm-block">
                                        <spring:message code="banner.content"/>
                                    </h1>
                                    <div class="swiper-slide-text">
                                        <h5 class="text-style-3"><spring:message code="industry.leader"/></h5>
                                    </div>
                                    <div class="offset-top-35"><a href="order"
                                                                  class="btn btn-primary btn-mod-1"><spring:message code="make.an"/></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide"><img src="images/home-slide-1-1920x600.jpg" alt="" width="1920" height="600"/>
                    <div class="swiper-slide-caption">
                        <div class="shell text-center text-sm-left">
                            <div class="range">
                                <div class="cell-sm-8 cell-md-8 cell-lg-6">
                                    <h1><spring:message code="professional"/> </h1>
                                    <div class="offset-top-35 offset-sm-top-65"><a href="order" class="btn btn-primary btn-mod-1"><spring:message code="make.an"/></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide"><img src="images/1920x600-2.jpg" alt="" width="1920" height="600"/>
                    <div class="swiper-slide-caption">
                        <div class="shell text-center text-sm-left">
                            <div class="range">
                                <div class="cell-sm-8 cell-md-8 cell-lg-7">
                                    <h1><spring:message code="we.can"/></h1>
                                    <div class="swiper-slide-text">
                                        <h5 class="text-style-3"><spring:message code="we.offer"/></h5>
                                    </div>
                                    <div class="offset-top-35"><a href="order"
                                                                  class="btn btn-primary btn-mod-1"><spring:message code="make.an"/></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination-wrap">
                <div class="shell">
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
        <section class="section-80 section-md-110">
            <div class="shell">
                <div class="range">
                    <div class="cell-xs-6 cell-sm-3">
                        <div class="counter-wrap"><span class="icon icon-lg icon-primary linecons-like"></span>
                            <div class="counter-value">
                                <p class="h3"><span data-from="0" data-to="100" class="counter">100%</span><span
                                        class="symbol">%</span></p>
                            </div>
                            <div class="divider-center divider-md divider-denim"></div>
                            <div class="counter-text">
                                <p class="text-style-2"><spring:message code="satisfaction.guaranteed"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="cell-xs-6 cell-sm-3 offset-top-45 offset-xs-top-0">
                        <div class="counter-wrap"><span class="icon icon-lg icon-primary linecons-small58"></span>
                            <div class="counter-value">
                                <p class="h3"><span data-from="0" data-to="10" class="counter">10</span></p>
                            </div>
                            <div class="divider-center divider-md divider-denim"></div>
                            <div class="counter-text">
                                <p class="text-style-2"><spring:message code="years"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="cell-xs-6 cell-sm-3 offset-top-45 offset-sm-top-0">
                        <div class="counter-wrap"><span class="icon icon-lg icon-primary linecons-user12"></span>
                            <div class="counter-value">
                                <p class="h3"><span data-from="0" data-to="2954" class="counter">2 954</span></p>
                            </div>
                            <div class="divider-center divider-md divider-denim"></div>
                            <div class="counter-text">
                                <p class="text-style-2"><spring:message code="happy.customer"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="cell-xs-6 cell-sm-3 offset-top-45 offset-sm-top-0">
                        <div class="counter-wrap"><span class="icon icon-lg-variant-1 icon-primary linecons-tv1"></span>
                            <div class="counter-value">
                                <p class="h3"><span data-from="0" data-to="3597" class="counter">3 597</span></p>
                            </div>
                            <div class="divider-center divider-md divider-denim"></div>
                            <div class="counter-text">
                                <p class="text-style-2"><spring:message code="items"/></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="section-60 bg-gradient-denim">
                <div class="bg-diamond-element"></div>
                <div class="shell text-center">
                    <div class="range">
                        <div class="cell-xs-12">
                            <h2><spring:message code="our.services"/></h2>
                            <p class="big"><spring:message code="text.a"/></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-top-40 section-bottom-60 section-sm-bottom-110">
                <div class="shell-wide shell-mod-1">
                    <div class="range">
                        <div data-arrows="true" data-loop="true" data-dots="false" data-swipe="true" data-items="1"
                             data-sm-items="3" data-md-items="3" data-lg-items="4" data-xl-items="6"
                             data-slide-to-scroll="1" data-mobile-center-mode="true" data-sm-center-mode="false"
                             data-center-padding="30px" data-sm-center-padding="0.5"
                             class="slick-slider slick-slider-style-1">
                            <div class="item height-fill">
                                <div class="product"><a href="services#ice-maker-repair" class="product-image"><img
                                        src="images/home-1-223x227.jpg" alt="" width="223" height="227"/></a>
                                    <div class="product-caption">
                                        <div class="divider divider-sm divider-primary"></div>
                                        <div class="product-title">
                                            <h5><a href="services#ice-maker-repair"><spring:message code="ice.maker"/></a></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item height-fill">
                                <div class="product"><a href="services#stove-repair" class="product-image"><img
                                        src="images/home-2-223x227.jpg" alt="" width="223" height="227"/></a>
                                    <div class="product-caption">
                                        <div class="divider divider-sm divider-primary"></div>
                                        <div class="product-title">
                                            <h5><a href="services#stove-repair"><spring:message code="stove.repair"/></a></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item height-fill">
                                <div class="product"><a href="services#microwave-repair" class="product-image"><img
                                        src="images/home-3-223x227.jpg" alt="" width="223" height="227"/></a>
                                    <div class="product-caption">
                                        <div class="divider divider-sm divider-primary"></div>
                                        <div class="product-title">
                                            <h5><a href="services#microwave-repair"><spring:message code="microwave.repair"/></a></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item height-fill">
                                <div class="product"><a href="services#washer-repair" class="product-image"><img
                                        src="images/home-4-223x227.jpg" alt="" width="223" height="227"/></a>
                                    <div class="product-caption">
                                        <div class="divider divider-sm divider-primary"></div>
                                        <div class="product-title">
                                            <h5><a href="services#washer-repair"><spring:message code="washer.repair"/></a></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item height-fill">
                                <div class="product"><a href="services#refrigerator-repair"
                                                        class="product-image"><img src="images/home-5-223x227.jpg"
                                                                                   alt="" width="223" height="227"/></a>
                                    <div class="product-caption">
                                        <div class="divider divider-sm divider-primary"></div>
                                        <div class="product-title">
                                            <h5><a href="services#refrigerator-repair"><spring:message code="refrigerator.repair"/></a></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item height-fill">
                                <div class="product"><a href="services#range-hood-repair"
                                                        class="product-image"><img src="images/home-6-223x227.jpg"
                                                                                   alt="" width="223" height="227"/></a>
                                    <div class="product-caption">
                                        <div class="divider divider-sm divider-primary"></div>
                                        <div class="product-title">
                                            <h5><a href="services#range-hood-repair"><spring:message code="range"/></a></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="shell offset-top-30 offset-sm-top-40">
                    <div class="text-center"><a href="services" class="btn btn-primary min-width-230"><spring:message code="view.all.services"/></a></div>
                </div>
            </div>
        </section>
        <section data-on="false" data-lg-on="true" class="rd-parallax bg-gray-base rd-parallax-overlay">
            <div data-speed="0.5" data-type="media" data-url="images/1920x800-1.jpg" class="rd-parallax-layer"></div>
            <div data-speed="0" data-type="html" class="rd-parallax-layer">
                <div class="section-60 section-sm-top-110 section-sm-bottom-100">
                    <div class="shell">
                        <div class="range text-center">
                            <div class="cell-xs-12">
                                <h2><spring:message code="manufacturers"/></h2>
                                <div class="divider divider-md divider-primary"></div>
                            </div>
                        </div>
                        <div class="range range-condensed offset-top-55">
                            <div data-items="1" data-sm-items="3" data-md-items="4" data-lg-items="5"
                                 data-stage-padding="0" data-loop="true" data-margin="30" data-sm-margin="73"
                                 data-nav="false" data-dots="true" data-sm-dots-each="2"
                                 class="owl-carousel owl-carousel-style-1">
                                <div class="item"><a href="503" class="link-image link-image-contrast"><img
                                        src="images/home-7-184x54.png" alt="" width="184" height="54"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-contrast"><img
                                        src="images/home-8-184x54.png" alt="" width="184" height="54"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-contrast"><img
                                        src="images/home-9-184x54.png" alt="" width="184" height="54"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-contrast"><img
                                        src="images/home-10-184x54.png" alt="" width="184" height="54"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-contrast"><img
                                        src="images/home-11-184x54.png" alt="" width="184" height="54"/></a></div>
                                <div class="item"><a href="503" class="link-image link-image-contrast"><img
                                        src="images/home-9-184x54.png" alt="" width="184" height="54"/></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--================responses========================-->
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

                        <c:forEach items="${responses}" var="responses">
                            <div class="item">
                                <blockquote class="quote-variant-1">
                                    <div class="quote-meta">
                                        <div class="unit unit-spacing-xs unit-middle unit-horizontal">
                                            <div class="unit-left">
                                                <figure class="quote-image"><img src="images/defaultuser.jpg" alt=""
                                                                                 width="47" height="47"/></figure>
                                            </div>
                                            <div class="unit-body"><cite>${responses.customer.name}</cite>
                                                <p class="small">${responses.date}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="quote-body">
                                        <p><q>${responses.response}</q></p>
                                    </div>
                                </blockquote>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <!--============================responses end=======================-->
        <section class="section-60 section-sm-110 bg-gray-lighter">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <h2><spring:message code="latest.blog.posts"/></h2>
                        <div class="divider divider-md divider-primary"></div>
                    </div>
                </div>
                <div class="row isotope-wrap offset-top-35 offset-md-top-55">
                    <div data-isotope-layout="moduloColumns" class="isotope isotope-spacing-1">
                        <div class="col-sm-6 col-lg-4 isotope-item">
                            <article class="post post-variant-1">
                                <figure class="post-image"><img src="images/home-16-370x247.jpg" alt="" width="370"
                                                                height="247"/></figure>
                                <div class="post-body">
                                    <div class="post-header">
                                        <h6><a href="blog-post"><spring:message code="how.to.repair"/></a>
                                        </h6>
                                    </div>
                                    <div class="post-meta">
                                        <time datetime="2016-03-05"><spring:message code="may"/></time>
                                    </div>
                                    <div class="post-text">
                                        <p><spring:message code="if.the.burners"/></p>
                                    </div>
                                    <div class="post-footer">
                                        <ul class="list-tags-variant-1">
                                            <li><a href="#"><spring:message code="repair"/></a></li>
                                            <li><a href="#"><spring:message code="range2"/></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-sm-6 col-lg-4 isotope-item">
                            <article class="post post-variant-1">
                                <figure class="post-image"><img src="images/home-17-370x247.jpg" alt="" width="370"
                                                                height="247"/></figure>
                                <div class="post-body">
                                    <div class="post-header">
                                        <h6><a href="blog-post"><spring:message code="tools.every"/></a></h6>
                                    </div>
                                    <div class="post-meta">
                                        <time datetime="2016-03-05"><spring:message code="may"/></time>
                                    </div>
                                    <div class="post-text">
                                        <p><spring:message code="you.probably"/></p>
                                    </div>
                                    <div class="post-footer">
                                        <ul class="list-tags-variant-1">
                                            <li><a href="#"><spring:message code="repair"/></a></li>
                                            <li><a href="#"><spring:message code="tools"/></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-sm-6 col-lg-4 isotope-item">
                            <article class="post post-variant-1">
                                <figure class="post-image"><img src="images/home-18-370x247.jpg" alt="" width="370"
                                                                height="247"/></figure>
                                <div class="post-body">
                                    <div class="post-header">
                                        <h6><a href="blog-post"><spring:message code="how.to.repair3"/></a></h6>
                                    </div>
                                    <div class="post-meta">
                                        <time datetime="2016-03-05"><spring:message code="may"/></time>
                                    </div>
                                    <div class="post-text">
                                        <p><spring:message code="pipes.in"/></p>
                                    </div>
                                    <div class="post-footer">
                                        <ul class="list-tags-variant-1">
                                            <li><a href="#"><spring:message code="repair"/></a></li>
                                            <li><a href="#"><spring:message code="pipes"/></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-sm-6 col-lg-4 isotope-item">
                            <article class="post post-variant-1">
                                <figure class="post-image"><img src="images/home-19-370x247.jpg" alt="" width="370"
                                                                height="247"/></figure>
                                <div class="post-body">
                                    <div class="post-header">
                                        <h6><a href="blog-post"><spring:message code="how.to.repair2"/></a></h6>
                                    </div>
                                    <div class="post-meta">
                                        <time datetime="2016-03-05"><spring:message code="may"/></time>
                                    </div>
                                    <div class="post-text">
                                        <p><spring:message code="do.you.need"/></p>
                                    </div>
                                    <div class="post-footer">
                                        <ul class="list-tags-variant-1">
                                            <li><a href="#"><spring:message code="repair"/></a></li>
                                            <li><a href="#"><spring:message code="tablet"/></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-sm-6 col-lg-4 isotope-item">
                            <article class="post post-variant-1">
                                <figure class="post-image"><img src="images/home-20-370x247.jpg" alt="" width="370"
                                                                height="247"/></figure>
                                <div class="post-body">
                                    <div class="post-header">
                                        <h6><a href="blog-post"><spring:message code="why.you.need"/></a></h6>
                                    </div>
                                    <div class="post-meta">
                                        <time datetime="2016-03-05"><spring:message code="may"/></time>
                                    </div>
                                    <div class="post-text">
                                        <p><spring:message code="when.it"/></p>
                                    </div>
                                    <div class="post-footer">
                                        <ul class="list-tags-variant-1">
                                            <li><a href="#"><spring:message code="repair"/></a></li>
                                            <li><a href="#"><spring:message code="tools"/></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-sm-6 col-lg-4 isotope-item">
                            <article class="post post-variant-1">
                                <figure class="post-image"><img src="images/home-21-370x247.jpg" alt="" width="370"
                                                                height="247"/></figure>
                                <div class="post-body">
                                    <div class="post-header">
                                        <h6><a href="blog-post"><spring:message code="how.to.solder"/></a></h6>
                                    </div>
                                    <div class="post-meta">
                                        <time datetime="2016-03-05"><spring:message code="may"/></time>
                                    </div>
                                    <div class="post-text">
                                        <p><spring:message code="this.guide"/></p>
                                    </div>
                                    <div class="post-footer">
                                        <ul class="list-tags-variant-1">
                                            <li><a href="#"><spring:message code="repair"/></a></li>
                                            <li><a href="#"><spring:message code="soldering"/></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
            <div class="shell offset-top-30 offset-sm-top-60">
                <div class="text-center"><a href="blog-masonry" class="btn btn-primary min-width-230"><spring:message code="view.all.blog.posts"/></a></div>
            </div>
        </section>

    </main>
    <c:import url="footer-part.jsp"/>
</div>
<c:import url="form-output-global.jsp"/>
</body>
<!-- End Google Tag Manager -->
</html>