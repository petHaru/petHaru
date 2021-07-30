<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                <main id="main">
                    <div class="record">
                        
                        <table class="record-table">
    
                            <h1 class="record-title">체중 통계</h1>
                            <thead>
                                <tr>
                                	<td>주차</td>
                                    <td>주 평균</td>
                                    <td>전주대비</td>
                                </tr>
                            </thead>
                            <tbody>
                            <c:set var="size" value="${fn:length(weightStats)}" />
                           <%--  <c:forEach var="n" items="${weightStats}" varStatus="s"> --%>
                            <c:forEach var="n" begin="0" end="${size-1}">
                                <tr>
	                                <!-- 주차 -->
                                	<c:set var="basicWeek" value="${weightStats[0].week}" />
	                                <td><c:out value="${weightStats[n].week-basicWeek} 주" /></td>                               
	                                
	                                <!-- 평균 -->
	                                <td><c:out value="${weightStats[n].avg} KG" /></td>    
	                                
	                                <!-- 전주대비 -->
	                                <c:if test="${n==0}">
	                                	<td>-</td>
	                                </c:if>
	                                <c:if test="${n>0}">
										<c:if test="${weightStats[n].avg > weightStats[n-1].avg}">
											<c:set var="minus" value="${weightStats[n].avg - weightStats[n-1].avg}" />
											<fmt:formatNumber var ="dif" value="${minus}" pattern = "0.00" />
											<td class="up">▲ ${dif} KG</td>
										</c:if>
										<c:if test="${weightStats[n].avg < weightStats[n-1].avg}">
											<c:set var="minus" value="${weightStats[n-1].avg - weightStats[n].avg}"/>
											<fmt:formatNumber var ="dif" value="${minus}" pattern = "0.00" />
											<td class="down">▼ ${dif} KG</td>
										</c:if>
	                                </c:if>                                    
                                </tr>
                            </c:forEach>
                            <!--     <tr>
                                    <td>2021-01-09</td>
                                    <td>5.02 KG</td>
                                    <td class="up">▲0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-01-16</td>
                                    <td>5.08 KG</td>
                                    <td class="up">▲0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-01-23</td>
                                    <td>5.03 KG</td>
                                    <td class="down">▼0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-01-30</td>
                                    <td>4.97 KG</td>
                                    <td class="down">▼0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-02-06</td>
                                    <td>4.94 KG</td>
                                    <td class="down">▼0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-02-13</td>
                                    <td>4.98 KG</td>
                                    <td class="up">▲0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-02-20</td>
                                    <td>5.00 KG</td>
                                    <td class="up">▲0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-02-27</td>
                                    <td>4.99 KG</td>
                                    <td class="down">▼0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-03-06</td>
                                    <td>5.10 KG</td>
                                    <td class="up">▲0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-03-13</td>
                                    <td>5.15 KG</td>
                                    <td class="up">▲0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-03-20</td>
                                    <td>5.12 KG</td>
                                    <td class="down">▼0.30 KG</td>
                                </tr>
                                <tr>
                                    <td>2021-03-27</td>
                                    <td>5.09 KG</td>
                                    <td class="down">▼0.30 KG</td>
                                </tr> -->
    
                            </tbody>
                        </table>
                    </div>
                </main>