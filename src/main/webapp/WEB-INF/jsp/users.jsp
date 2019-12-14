<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="user.list"/></title>
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
        <div class="group-xl"><a href="admin" class="btn btn-primary-variant-1 btn-mod-1"><spring:message code="back.account"/></a></div>
        <section class="section-top-20 section-sm-top-20">
            <div class="shell">
                <div class="range">
                    <div class="cell-md-10 cell-lg-12">
                        <div class="offset-top-32">
                            <div class="table-mobile">
                                <table class="table table-primary table-striped-variant-1">
                                    <thead>
                                    <tr>
                                        <th><spring:message code="user.id"/></th>
                                        <th><spring:message code="first.name"/></th>
                                        <th><spring:message code="last.name"/></th>
                                        <th><spring:message code="email"/></th>
                                        <th><spring:message code="phone"/></th>
                                        <th><spring:message code="role"/></th>
                                        <th><spring:message code="edit"/></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${users}" var="users">
                                        <tr>
                                            <td>${users.id}</td>
                                            <td>${users.firstName}</td>
                                            <td>${users.lastName}</td>
                                            <td>${users.login}</td>
                                            <td>${users.phone}</td>
                                            <td>${users.role}</td>
                                            <td>
                                                <a href="user-profile?id=${users.id}" class="search_link"><span
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
            <div class="cell-xs-12 offset-top-35 offset-sm-top-60">
            <c:if test="${usersPages > 1}">
            <ul class="pagination-custom">
                <c:choose>
                <c:when test="${currentPage  != 0 }">
                <li><a href="users?page=${currentPage-1}&size=3"><span class="sr-only">Prev</span></a></li>
                </c:when>
                    <c:otherwise>
                       <li><span class="sr-only">Prev</span></li>
                    </c:otherwise>
                </c:choose>
                    <c:forEach var = "numberPage" begin = "1" end = "${usersPages}">
                        <c:choose>
                            <c:when test="${currentPage == (numberPage-1) }">
                                <li class="active"><a href="users?page=${numberPage-1}&size=3" class="nav-item">${numberPage}</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="users?page=${numberPage-1}&size=3" class="nav-item">${numberPage}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                <c:choose>
                    <c:when test="${currentPage < (usersPages-1) }">
                        <li><a href="users?page=${currentPage+1}&size=3"><span class="sr-only">Next</span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li><span class="sr-only">Next</span></li>
                    </c:otherwise>
                </c:choose>
            </ul>
            </c:if>
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