<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en" class="wide wow-animation">
<head>
    <title></title>
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
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h5><spring:message code="order.id"/># ${order.id}  <spring:message code="status"/> : ${order.status}</h5>
                        <hr>
                    </div>
                </div>

                <div class="row grid-system-row offset-top-32">

                    <div class="col-xs-8">
                        <div class="grid-element min-height-lg-204">
                            <div class="offset-top-20 offset-md-top-20">
                                <h5>${order.repairType}</h5>
                                <hr>
                                <article class="post-info">
                                    <div class="unit unit-spacing-md unit-sm-horizontal">

                                        <c:choose>
                                            <c:when test="${order.repairType=='REFRIGERATOR'}">
                                                <div class="unit-left">
                                                    <figure><img src="images/services-5-146x156.png" alt="" width="170" height="170"/></figure>
                                                </div>
                                            </c:when>
                                            <c:when test="${order.repairType=='ICE_MAKER'}">
                                                <div class="unit-left">
                                                    <figure><img src="images/services-1-146x156.png" alt="" width="170" height="170"/></figure>
                                                </div>
                                            </c:when>
                                            <c:when test="${order.repairType=='STOVE'}">
                                                <div class="unit-left">
                                                    <figure><img src="images/services-2-146x156.png" alt="" width="170" height="170"/></figure>
                                                </div>
                                            </c:when>
                                            <c:when test="${order.repairType=='MICROWAVE'}">
                                                <div class="unit-left">
                                                    <figure><img src="images/services-3-146x156.png" alt="" width="170" height="170"/></figure>
                                                </div>
                                            </c:when>
                                            <c:when test="${order.repairType=='WASHER'}">
                                                <div class="unit-left">
                                                    <figure><img src="images/services-4-146x156.png" alt="" width="170" height="170"/></figure>
                                                </div>
                                            </c:when>
                                            <c:when test="${order.repairType=='RANGE_HOOD'}">
                                                <div class="unit-left">
                                                    <figure><img src="images/services-6-146x156.png" alt="" width="170" height="170"/></figure>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="unit-left">
                                                    <figure><img src="images/rs2.jpg" alt="" width="170" height="170"/></figure>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                        <div class="unit-body">
                                            <h6><a href="">${firstComment.user.firstName} ${firstComment.user.lastName}</a></h6>
                                            <time datetime="2016-04-24">${firstComment.date}</time>
                                            <p> ${firstComment.comment} </p>
                                        </div>
                                    </div>
									
                                </article>
                            </div>
                            <div class="offset-top-60 offset-md-top-88">

                                <h5><spring:message code="comment"/></h5>
                                <hr>
                                <div class="comment-group">
                                    <article class="comment">
                                        <c:forEach items="${comments}" var="comments">
                                        <div class="comment-body">
                                            <div class="unit unit-spacing-sm unit-sm-horizontal">
                                                <div class="unit-left">
                                                    <figure><img src="images/defaultuser.jpg" alt="" width="70"
                                                                 height="70"/></figure>
                                                </div>
                                                <div class="unit-body">
                                                    <div class="comment-header">
                                                        <h6><a href="">${comments.user.firstName} ${comments.user.lastName} - ${comments.user.role}</a></h6>
                                                        <time datetime="2016-04-24">${comments.date}</time>
                                                    </div>
                                                    <div class="comment-text">
                                                        <p>${comments.comment}</p>
                                                    </div>
                                                    <div class="comment-footer"><a href=""
                                                                                   class="link link-icon link-primary"><span
                                                            class="icon icon-xs fa-mail-reply"></span><span>Reply</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </c:forEach>
                                    </article>

                                </div>
                            </div>


                        </div>
                    </div>

                    <div class="col-xs-4">
                        <div class="grid-element">
                            <div class="pricing-table pricing-table-style-lighter">
                                <div class="pricing-table-header">
                                    <h6 class="pricing-table-heading"><spring:message code="price2"/></h6>
                                    <p class="price">$${order.price}</p>
                                </div>
                                <div class="pricing-table-body">
                                    <ul class="list-bordered">
                                        <li>${order.user.firstName}</li>
                                        <li>${order.user.lastName}</li>
                                        <li>${order.user.login}</li>
                                        <li>${order.user.phone}</li>
                                    </ul>
                                </div>

						<c:choose>
                            <c:when test="${user.role=='ADMIN'}">
                                <c:if test="${order.status=='NEW'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="OFFER" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="make.offer"/></button>
										</div>
                                    </form:form>
									<form:form method="post" action="status" modelAttribute="statusForm">
                                            <div class="pricing-table-footer">
                                                <form:input type="hidden" path="status" value="CANCELED" />
                                                <form:input type="hidden" path="orderId" value="${order.id}" />
                                                <button type="submit" class="btn btn-sm btn-primary">
                                                    <spring:message code="cancel.order"/></button>
                                            </div>
                                     </form:form>
                                </c:if>
                                <c:if test="${order.status=='OFFER'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="IN_PROGRESS" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="approved"/></button>
                                        </div>
									</form:form>
									<form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="CANCELED" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="cancel.order"/></button>
                                        </div>
                                    </form:form>
                                </c:if>
                                <c:if test="${order.status=='IN_PROGRESS'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="COMPLETED" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="complete"/></button>
                                        </div>
                                    </form:form>
                                </c:if>
                                <c:if test="${order.status=='COMPLETED'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="CLOSED" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="closed"/></button>
                                        </div>
                                    </form:form>
                                </c:if>

								</c:when>

                            <c:when test="${user.role=='MANAGER'}">
                                <c:if test="${order.status=='NEW'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <div class="form-group" style="padding-right: 90px;padding-left: 90px">
                                                <label for="price" class="form-label-outside"><spring:message code="price"/></label>
                                                <form:input  type="text" path="price" data-constraints="@Reqstaticred @Numeric" class="form-control form-control-has-validation form-control-last-child"/><span class="form-validation"></span>
                                            </div>
                                            <form:input type="hidden" path="status" value="OFFER" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="make.offer"/></button>
                                        </div>
                                        </form:form>
                                            <form:form method="post" action="status" modelAttribute="statusForm">
                                            <div class="pricing-table-footer">
                                                <form:input type="hidden" path="status" value="CANCELED" />
                                                <form:input type="hidden" path="orderId" value="${order.id}" />
                                                <button type="submit" class="btn btn-sm btn-primary">
                                                    <spring:message code="cancel.order"/></button>
                                            </div>
                                        </div>
                                    </form:form>
                                </c:if>
                                <c:if test="${order.status=='OFFER'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="CANCELED" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="cancel.order"/></button>
                                        </div>
                                    </form:form>
                                </c:if>
                                <c:if test="${order.status=='COMPLETED'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="CLOSED" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="closed"/></button>
                                        </div>
                                    </form:form>
                                </c:if>
							</c:when>

                            <c:when test="${user.role=='MASTER'}">
                                <c:if test="${order.status=='IN_PROGRESS'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm" >
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="COMPLETED" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="complete"/></button>
                                        </div>
                                    </form:form>
                                </c:if>
                            </c:when>
                            <c:when test="${user.role=='CUSTOMER'}">
                                <c:if test="${order.status=='NEW'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="CANCELED" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="cancel.order"/></button>
                                        </div>
                                    </form:form>
                                </c:if>
                                <c:if test="${order.status=='OFFER'}">
                                    <form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="IN_PROGRESS" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="approved"/></button>
                                        </div>
									</form:form>
									<form:form method="post" action="status" modelAttribute="statusForm">
                                        <div class="pricing-table-footer">
                                            <form:input type="hidden" path="status" value="CANCELED" />
                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <spring:message code="cancel.order"/></button>
                                        </div>
                                    </form:form>
                                </c:if>
                                <c:if test="${order.status=='COMPLETED' or order.status=='CLOSED'}">
                                <div class="pricing-table-footer">
								<a href="feedback" class="btn btn-primary"><spring:message code="send.feedback"/>
								</a>
								</div>
                                </c:if>
                            </c:when>
                            <c:otherwise>
                                <a href=""></a>
                            </c:otherwise>
                        </c:choose>
								
                            </div>
                        </div>
                    </div>

                </div>
                <c:choose>

                    <c:when test="${order.status=='CLOSED'}">
                        <a href=""></a>
                    </c:when>
                    <c:when test="${order.status=='CANCELED'}">
                        <a href=""></a>
                    </c:when>
                    <c:otherwise>
                        <div class="row grid-system-row offset-top-32">
                            <div class="col-xs-12">
                                <div class="grid-element">
                                    <div class="offset-top-30 offset-md-top-30">

                                        <h5><spring:message code="send.comment"/></h5>
                                        <hr>
                                        <div class="offset-top-22">
                                            <form:form data-form-output="form-output-global" data-form-type="contact" method="post"
                                                  action="order-comment" modelAttribute="commentForm" >
                                                <div class="range">

                                                    <div class="cell-xs-12 offset-top-18">
                                                        <div class="form-group">
                                                            <label for="contact-message"
                                                                   class="form-label-outside"><spring:message code="message"/></label>
                                                            <form:textarea path="message" data-constraints="@Reqstaticred" class="form-control"></form:textarea>
                                                            <form:input type="hidden" path="orderId" value="${order.id}" />
                                                        </div>
                                                    </div>
                                                    <div class="cell-xs-12 offset-top-30">

                                                        <button type="submit" class="btn btn-primary"><spring:message code="send.message"/></button>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>


    </main>
    <c:import url="footer-part.jsp"/>
</div>
<c:import url="form-output-global.jsp"/>
</body>
<!-- End Google Tag Manager -->
</html>