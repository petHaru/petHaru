<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/js/management/weightRecord/stats.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
                            <c:forEach var="n" begin="0" end="${size-1}">
                                <tr class="line num${n}">
	                                <!-- 주차 -->
                                	<c:set var="basicWeek" value="${weightStats[0].week}" />
	                                <c:set var="preWeek" value="${weightStats[n].week}"></c:set>
	                                <td><c:out value="${preWeek-basicWeek} 주" /></td>                               
	                                
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
	                                
	                                <!-- 숨겨서 보낼 값 -->
	                                <input class="petId" type="hidden" value="${param.petId}"/>
	                                <input class="preWeek" type="hidden" value="${preWeek}"/>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="overlay d-none"></div>
                    <div class="popup d-none">
						<div class="close-btn">
							<img src="../../images/icon-close-btn.png" onclick="closePopup()" alt="">
						</div>	
                    	<table class="record-table">
                            <thead>
                                <tr class="tr">
                                    <td class="img date">날짜</td>
                                    <td class="img time">시간</td>
                                    <td class="img weight">몸무게</td>
                                </tr>
                            </thead>
                            <tbody class="tbody popTr">
                             </tbody>
                        </table>
                     </div>
                </main>