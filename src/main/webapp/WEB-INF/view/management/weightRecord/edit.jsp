<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                <main id="main">
                    <fieldset class="form">
                        <form class="weight-input" action="edit" method="post">						
                            <div class="revise">수정하기</div>
                            <div class="weight-input-container">
                                <legend class="d-none">날짜입력</legend>
                                <label class="img date"></label>
                                <input class="input-date" type="date" name="date" value="${weight.measureDate}">
                            </div>
    
                            <div class="weight-input-container">
                                <legend class="d-none">시간입력</legend>
                                <label class="img time"></label>
                                <input class="input-time" type="time" name="time" value="${weight.measureTime}">
                            </div>
    
                            <div class="weight-input-container">
                                <legend class="d-none">몸무게 입력</legend>
                                <label class="img weight"></label>
                                <input class="input-weight" type="number" step="0.01" name="kg" value="${weight.kg}" >
                            </div>
                            
                           	<input type="hidden" name="petId" value="${param.petId}">
                           	<input type="hidden" name="id" value="${param.id}">
    						
                            <div class="button">
                                <input class="btn re" type="submit" value="수정">
                                <div class="btn delete">
                                	<a class="link" href="del?petid=${param.petid}&id=${param.id}" onclick="if(!confirm('삭제할겨?')) return false;">삭제</a>
                                </div>
                            </div>
                        </form>
                    </fieldset>
                </main>