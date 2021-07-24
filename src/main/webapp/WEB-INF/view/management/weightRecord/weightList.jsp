<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                <main id="main">
                    
                    <div class="record">
                        <h1 class="record-title">${pet.name}의 체중기록</h1>
    
                        <a href="reg?petId=${pet.id}"><div class="regbutton">체중등록</div></a>
                        <a href="stats"><div class="statbutton">통계보기</div></a>
                        <table class="record-table">
                            <thead>
                                <tr class="tr">
                                    <td class="img date">날짜</td>
                                    <td class="img time">시간</td>
                                    <td class="img weight">몸무게</td>
                                </tr>
                            </thead>
                            <tbody class="tbody">
                            <c:forEach var="n" items="${weightList}">
                            	
                            	<!-- time변수 설정 -->
                            	<c:set var="time" value="${n.measureTime}"/>
                            	<c:set var="hour" value="${fn:substring(time,0,2)}"/>
                            	<c:set var="minute" value="${fn:substring(time,3,5)}"/>
                            	<fmt:parseNumber var = "numhour" value="${hour}" pattern = "00" />
             	
                            	<tr>
                            		<td>
                            			<a href="edit?petId=${param.petId}">${n.measureDate}</a>
                            		</td>
                            		
                            		<!-- AM, PM 구분 -->
	                            	<c:if test="${numhour>12}">
	                            		<td class="pm">${numhour-12}:${minute} PM</td>
	                            	</c:if>
	                            	<c:if test="${numhour<=12}">
	                            		<td class="am">${numhour}:${minute} AM</td>
	                            	</c:if>
	                            	
                            		<td>${n.kg} KG</td>
                            	</tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </main>