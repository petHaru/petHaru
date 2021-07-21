<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                <main id="main">
                    
                    <div class="record">
                        <h1 class="record-title">${list[0].petname}의 체중기록</h1>
    
                        <a href="reg?petid=${param.petid}&petname=${list[0].petname}"><div class="regbutton">체중등록</div></a>
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
                            <c:forEach var="n" items="${list}">
                            	<tr>
                            		<c:set var="Datetime" value="${n.measureDatetime}"/>
                            		<c:set var="date" value="${fn:substring(Datetime,0,10)}"/>
                            		<c:set var="time" value="${fn:substring(Datetime,11,16)}"/>
                            		
                            		<c:set var="hour" value="${fn:substring(time,0,2)}"/>
                            		<c:set var="minute" value="${fn:substring(time,3,5)}"/>
                            		<fmt:parseNumber var = "numhour" value="${hour}" pattern = "00" />
	                            	<td>
	                            		<a href="edit?petid=${param.petid}&id=${n.id}">${date}</a>
	                            	</td>
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