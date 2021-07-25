<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                <main id="main">
                    <fieldset class="form">
    
                        <form class="weight-input" action="WeightEdit" method="post">
    
                            <h1 class="d-none">펫 선택</h1>
    						
                            <div class="revise">수정하기</div>
                            <div class="weight-input-container">
                                <legend class="d-none">날짜입력</legend>
                                <label class="img date"></label>
                                
									<c:set var="Datetime" value="${weight.measureDatetime}"/>
                            		<c:set var="date" value="${fn:substring(Datetime,0,10)}"/>
                            		<c:set var="time" value="${fn:substring(Datetime,11,16)}"/>
                            		
                            		<c:set var="hour" value="${fn:substring(time,0,2)}"/>
                            		<c:set var="minute" value="${fn:substring(time,3,5)}"/>
                            		<fmt:parseNumber var = "numhour" value="${hour}" pattern = "00" />
                                <input class="input-date" type="date" name="date" value="${date}">
                            </div>
    
                            <div class="weight-input-container">
                                <legend class="d-none">시간입력</legend>
                                <label class="img time"></label>
                                <input class="input-time" type="time" name="time" value="${time}">
                            </div>
    
                            <div class="weight-input-container">
                                <legend class="d-none">몸무게 입력</legend>
                                <label class="img weight"></label>
                                <input class="input-weight" type="number" step="0.01" name="kg" value="${weight.kg}" >
                            </div>
    
                            <div class="button">
                                <div>
                                	<input type="hidden" name="id" value="${param.id}">
                                	<input type="hidden" name="petid" value="${param.petid}">
                                    <input class="btn re" type="submit" value="수정">
                                </div>
                                <div class="btn delete">
                                	<a class="link" href="del?petid=${param.petid}&id=${param.id}" onclick="if(!confirm('삭제할겨?')) return false;">삭제</a>
                                    <!-- <input class="btn delete" type="submit" value="삭제"> -->
                                </div>
                            </div>
                        </form>
                    </fieldset>
                </main>