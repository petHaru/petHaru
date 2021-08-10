<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                <main id="main">
			        <div class="subject">
			            <h1 class="title">${pet.name}의 체중기록</h1>
			        </div>
                    <div class="record">
                        <table class="recordTable">
                            <thead>
                                <tr class="headTr">
                                    <td class="img date"></td>
                                    <td class="img time"></td>
                                    <td class="img weight"></td>
                                </tr>
                            </thead>
                            <tbody>
	                            <c:forEach var="n" items="${weightList}">
	                            	
	                            	<!-- time변수 설정 -->
	                            	<c:set var="time" value="${n.measureTime}"/>
	                            	<c:set var="hour" value="${fn:substring(time,0,2)}"/>
	                            	<c:set var="minute" value="${fn:substring(time,3,5)}"/>
	                            	<fmt:parseNumber var = "numhour" value="${hour}" pattern = "00" />
	             	
	                            	<tr>
	                            		<td>
	                            			<a href="edit?petId=${n.petId}&id=${n.id}">${n.measureDate}</a>
	                            		</td>
	                            		
	                            		<!-- AM, PM 구분 -->          		
		                            	<c:if test="${numhour>12 and numhour<24}">
		                            		<td class="pm">${numhour-12}:${minute} PM</td>
		                            	</c:if>
		                            	<c:if test="${numhour==12}">
		                            		<td class="pm">${numhour}:${minute} PM</td>
		                            	</c:if>
		                            	<c:if test="${numhour<12 and numhour>0}">
		                            		<td class="am">${numhour}:${minute} AM</td>
		                            	</c:if>
		                            	<c:if test="${numhour==00}">
		                            		<td class="am">${numhour+12}:${minute} AM</td>
		                            	</c:if>
		                            	
	                            		<td>${n.kg} KG</td>
	                            	</tr>
	                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="button">
	    					<a class="regBtn" href="reg?petId=${pet.id}">체중등록</a>
	    					<a class="statsBtn" href="stats?petId=${pet.id}">통계보기</a>
                    	</div>
                    </div>
                </main>