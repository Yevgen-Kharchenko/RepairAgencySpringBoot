<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="manager"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">

        <section class="section-top-20 section-sm-top-40 section-sm-bottom-110">
            <div class="shell">
            <div class="range">
                <div class="cell-md-10 cell-lg-12">
                    <h5><spring:message code="hello"/>${user.firstName} ${user.lastName}!</h5>
                    <h6><spring:message code="you.can.manager"/><a href="profile"
                                                                        class="search_link"><spring:message code="profile"/></a></h6>
                    <hr>
                    <div class="offset-top-32">
                        <div data-type="accordion" class="responsive-tabs responsive-tabs-horizontal">
                            <ul class="resp-tabs-list">
                                <li><spring:message code="new"/></li>
                                <li><spring:message code="offer"/></li>
                                <li><spring:message code="in.progress"/></li>
                                <li><spring:message code="complete"/></li>
                                <li><spring:message code="canceled"/></li>
                                <li><spring:message code="closed"/></li>
                                <li><spring:message code="user.list"/></li>
                            </ul>
                            <div class="resp-tabs-container">
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
                                                                    <th><spring:message code="date"/></th>
                                                                    <th><spring:message code="repair.type"/></th>
                                                                    <th><spring:message code="first.name"/></th>
                                                                    <th><spring:message code="last.name"/></th>
                                                                    <th><spring:message code="email"/></th>
                                                                    <th><spring:message code="phone"/></th>
                                                                    <th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${ordersNew}" var="ordersNew">
                                                                    <tr>
                                                                        <td>${ordersNew.id}</td>
                                                                        <td>${ordersNew.date}</td>
                                                                        <td>${ordersNew.repairsTypes}</td>
                                                                        <td>${ordersNew.user.firstName}</td>
                                                                        <td>${ordersNew.user.lastName}</td>
                                                                        <td>${ordersNew.user.login}</td>
                                                                        <td>${ordersNew.user.phone}</td>
                                                                        <td>
                                                                            <a href="order-comment?orderId=${ordersNew.id}" class="search_link"><span
                                                                                    class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
                                                                    <th><spring:message code="date"/></th>
                                                                    <th><spring:message code="repair.type"/></th>
                                                                    <th><spring:message code="first.name"/></th>
                                                                    <th><spring:message code="last.name"/></th>
                                                                    <th><spring:message code="email"/></th>
                                                                    <th><spring:message code="phone"/></th>
                                                                    <th><spring:message code="price"/></th>
                                                                    <th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${ordersOffer}" var="ordersOffer">
                                                                    <tr>
                                                                        <td>${ordersOffer.id}</td>
                                                                        <td>${ordersOffer.date}</td>
                                                                        <td>${ordersOffer.repairsTypes}</td>
                                                                        <td>${ordersOffer.user.firstName}</td>
                                                                        <td>${ordersOffer.user.lastName}</td>
                                                                        <td>${ordersOffer.user.login}</td>
                                                                        <td>${ordersOffer.user.phone}</td>
                                                                        <td>${ordersOffer.price}</td>
                                                                        <td>
                                                                            <a href="order-comment?orderId=${ordersOffer.id}" class="search_link"><span
                                                                                    class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
                                                                    <th><spring:message code="date"/></th>
                                                                    <th><spring:message code="repair.type"/></th>
                                                                    <th><spring:message code="first.name"/></th>
                                                                    <th><spring:message code="last.name"/></th>
                                                                    <th><spring:message code="email"/></th>
                                                                    <th><spring:message code="phone"/></th>
                                                                    <th><spring:message code="price"/></th>
                                                                    <th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${ordersInProgress}" var="ordersInProgress">
                                                                    <tr>
                                                                        <td>${ordersInProgress.id}</td>
                                                                        <td>${ordersInProgress.date}</td>
                                                                        <td>${ordersInProgress.repairsTypes}</td>
                                                                        <td>${ordersInProgress.user.firstName}</td>
                                                                        <td>${ordersInProgress.user.lastName}</td>
                                                                        <td>${ordersInProgress.user.login}</td>
                                                                        <td>${ordersInProgress.user.phone}</td>
                                                                        <td>${ordersInProgress.price}</td>
                                                                        <td>
                                                                            <a href="order-comment?orderId=${ordersInProgress.id}" class="search_link"><span
                                                                                    class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
                                                                    <th><spring:message code="date"/></th>
                                                                    <th><spring:message code="repair.type"/></th>
                                                                    <th><spring:message code="first.name"/></th>
                                                                    <th><spring:message code="last.name"/></th>
                                                                    <th><spring:message code="email"/></th>
                                                                    <th><spring:message code="phone"/></th>
                                                                    <th><spring:message code="price"/></th>
                                                                    <th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${ordersCompleted}" var="ordersCompleted">
                                                                    <tr>
                                                                        <td>${ordersCompleted.id}</td>
                                                                        <td>${ordersCompleted.date}</td>
                                                                        <td>${ordersCompleted.repairsTypes}</td>
                                                                        <td>${ordersCompleted.user.firstName}</td>
                                                                        <td>${ordersCompleted.user.lastName}</td>
                                                                        <td>${ordersCompleted.user.login}</td>
                                                                        <td>${ordersCompleted.user.phone}</td>
                                                                        <td>${ordersCompleted.price}</td>
                                                                        <td>
                                                                            <a href="order-comment?orderId=${ordersCompleted.id}" class="search_link"><span
                                                                                    class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
                                                                    <th><spring:message code="date"/></th>
                                                                    <th><spring:message code="repair.type"/></th>
                                                                    <th><spring:message code="first.name"/></th>
                                                                    <th><spring:message code="last.name"/></th>
                                                                    <th><spring:message code="email"/></th>
                                                                    <th><spring:message code="phone"/></th>
                                                                    <th><spring:message code="price"/></th>
                                                                    <th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${ordersCanceled}" var="ordersCanceled">
                                                                    <tr>
                                                                        <td>${ordersCanceled.id}</td>
                                                                        <td>${ordersCanceled.date}</td>
                                                                        <td>${ordersCanceled.repairsTypes}</td>
                                                                        <td>${ordersCanceled.user.firstName}</td>
                                                                        <td>${ordersCanceled.user.lastName}</td>
                                                                        <td>${ordersCanceled.user.login}</td>
                                                                        <td>${ordersCanceled.user.phone}</td>
                                                                        <td>${ordersCanceled.price}</td>
                                                                        <td>
                                                                            <a href="order-comment?orderId=${ordersCanceled.id}" class="search_link"><span
                                                                                    class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
                                                                    <th><spring:message code="date"/></th>
                                                                    <th><spring:message code="repair.type"/></th>
                                                                    <th><spring:message code="first.name"/></th>
                                                                    <th><spring:message code="last.name"/></th>
                                                                    <th><spring:message code="email"/></th>
                                                                    <th><spring:message code="phone"/></th>
                                                                    <th><spring:message code="price"/></th>
                                                                    <th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${ordersCl}" var="ordersCl">
                                                                    <tr>
                                                                        <td>${ordersCl.id}</td>
                                                                        <td>${ordersCl.date}</td>
                                                                        <td>${ordersCl.repairsTypes}</td>
                                                                        <td>${ordersCl.user.firstName}</td>
                                                                        <td>${ordersCl.user.lastName}</td>
                                                                        <td>${ordersCl.user.login}</td>
                                                                        <td>${ordersCl.user.phone}</td>
                                                                        <td>${ordersCl.price}</td>
                                                                        <td>
                                                                            <a href="order-comment?orderId=${ordersCl.id}" class="search_link"><span
                                                                                    class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
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