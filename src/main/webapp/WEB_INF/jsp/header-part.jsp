<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<header class="page-head">
<div class="rd-navbar-wrap">
          <nav data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-md-layout="rd-navbar-static" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-stick-up-clone="false" data-md-stick-up-offset="199px" data-lg-stick-up-offset="199px" class="rd-navbar rd-navbar-corporate rd-navbar-dark">
    <div class="rd-navbar-inner">
        <div class="rd-navbar-middle-panel">
            <div class="rd-navbar-panel">
                <button data-rd-navbar-toggle=".rd-navbar-outer-panel" class="rd-navbar-toggle">
                    <span></span></button>
                <a href="" class="rd-navbar-brand">
                    <div class="rd-navbar-fixed--hidden"><img src="images/logo-light-250x40.png" alt=""
                                                              width="250" height="40"/></div>
                    <div class="rd-navbar-fixed--visible"><img src="images/logo-light-250x40.png" alt=""
                                                               width="250" height="40"/></div>
                </a>
</div>
            <div class="rd-navbar-aside">
                <div data-rd-navbar-toggle=".rd-navbar-aside" class="rd-navbar-aside-toggle"><span></span>
                </div>
                <div class="rd-navbar-aside-content">
                    <ul class="block-wrap-list">
                        <li class="block-wrap">
                            <div class="unit unit-sm-horizontal unit-align-center unit-middle unit-spacing-xxs">
                                <div class="unit-left"><span
                                        class="icon icon-circle-sm icon-sm-variant-1 icon-venice-blue-filled icon-white mdi mdi-map-marker"></span>
                                </div>
                                <div class="unit-body">
                                    <address class="contact-info">
                                        <a href="contacts"><span><spring:message code="rosecrans.ave"/></span><br>
                                            <span><spring:message code="ca.90245"/></span></a>
                                    </address>
                                </div>
                            </div>
                        </li>
                        <li class="block-wrap">
                            <div class="unit unit-sm-horizontal unit-align-center unit-middle unit-spacing-xxs">
                                <div class="unit-left"><span
                                        class="icon icon-circle-sm icon-sm-variant-1 icon-venice-blue-filled icon-white fa-clock-o"></span>
                                </div>
                                <div class="unit-body">
                                    <address class="contact-info">
                                        <span><spring:message code="mon.fri"/></span><span><spring:message code="sat.sun"/></span>
                                    </address>
                                </div>
                            </div>
                        </li>
                        <li class="block-wrap">
                            <div class="unit unit-sm-horizontal unit-align-center unit-middle unit-spacing-xxs">
                                <div class="unit-left"><span
                                        class="icon icon-circle-sm icon-sm-variant-1 icon-venice-blue-filled icon-white mdi mdi-phone"></span>
                                </div>
                                <div class="unit-body">
                                    <address class="contact-info">
                                        <span><a href="callto:#">1-900-8123</a></span><span><a
                                            href="callto:#">1-900-8124</a></span>
                                    </address>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="rd-navbar-outer-panel">
            <div class="rd-navbar-nav-wrap">
                <ul class="rd-navbar-nav">
                    <li class="active"><a href="">
                        <spring:message code="home"/>
                    </a></li>
                    <li><a href="services">
                        <spring:message code="services"/>
                    </a>
                        <ul class="rd-navbar-dropdown tabs-nav">
                            <li><a href="services#ice-maker-repair">
                                <spring:message code="ice.maker"/>
                            </a></li>
                            <li><a href="services#stove-repair">
                                <spring:message code="stove.repair"/>
                            </a></li>
                            <li><a href="services#appliance-parts">
                                <spring:message code="appliance.parts"/>
                            </a></li>
                            <li><a href="services#microwave-repair">
                                <spring:message code="microwave.repair"/>
                            </a></li>
                            <li><a href="services#washer-repair">
                                <spring:message code="washer.repair"/>
                            </a></li>
                            <li><a href="services#refrigerator-repair">
                                <spring:message code="refrigerator.repair"/>
                            </a></li>
                            <li><a href="services#range-hood-repair">
                                <spring:message code="range"/>
                            </a></li>
                        </ul>
                    </li>
                    <li><a href="about">
                        <spring:message code="pages"/>
                    </a>
                        <ul class="rd-navbar-dropdown tabs-nav">
                            <li><a href="about">
                                <spring:message code="about.us"/>
                            </a></li>
                            <li><a href="team">
                                <spring:message code="our.team"/>
                            </a></li>
                            <li><a href="responses">
                                <spring:message code="responses"/>
                            </a></li>
                            <li><a href="privacy">
                                <spring:message code="privacy.policy"/>
                            </a></li>
                            <li><a href="contacts">
                                <spring:message code="contact"/>
                            </a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="order">
                            <spring:message code="order"/>
                        </a>
                    </li>

                    <li>
                        <a href="gallery-masonry">
                            <spring:message code="gallery"/>
                        </a>
                    </li>
                    <li>
                        <a href="blog-masonry">
                            <spring:message code="blog"/>
                        </a>
                    </li>
                </ul>

                <ul class="rd-navbar-nav">

                <li>
                        <c:choose>
                            <c:when test="${user.role=='ADMIN'}">
                                <a href="admin">
                                    <spring:message code="account"/>
                                </a>
                                <ul class="rd-navbar-dropdown tabs-nav">
                                    <li><a href="admin">
                                        <spring:message code="admin"/>
                                    </a></li>
                                    <li><a href="manager">
                                        <spring:message code="manager"/>
                                    </a></li>
                                    <li><a href="master">
                                        <spring:message code="master"/>
                                    </a></li>
                                    <li><a href="user">
                                        <spring:message code="user"/>
                                    </a></li>
                                </ul>

                            </c:when>
                            <c:when test="${user.role=='MANAGER'}">
                                <a href="manager">
                                    <spring:message code="account"/>
                                </a>
                            </c:when>
                            <c:when test="${user.role=='MASTER'}">
                                <a href="master">
                                    <spring:message code="account"/>
                                </a>
                            </c:when>
                            <c:when test="${user.role=='CUSTOMER'}">
                                <a href="user">
                                    <spring:message code="account"/>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a href=""></a>
                            </c:otherwise>
                        </c:choose>

                 
                </li>
                <li>
                    <c:choose>
                        <c:when test="${not empty user}">
                            <a href="logout">
                                <spring:message code="logout"/>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a href="login-register">
                                <spring:message code="login"/>
                            </a>
                        </c:otherwise>
                    </c:choose>

               
            </li>
            <li><a href="language?locale=en" class="text-uppercase">en</a>
                <a href="language?locale=ua" class="text-uppercase">ua</a>
			</li>
        </ul>

    </div>
</div>
	</div>
        </nav>
        </div>
</header>