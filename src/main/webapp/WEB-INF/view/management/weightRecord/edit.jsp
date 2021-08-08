<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                 <main id="main">
                    <div class="subject">
			            <h1 class="title">수정하기</h1>
			        </div>
                    <form class="form" action="edit" method="post">
                        <table class="editTable">
                            <tr>
                                <td class="tdTitle">
                                    <img class="date" src="../../images/icon-calendar.png">
                                </td>
                                <td>
                                    <input class="inputDate" type="date" name="date" value="${weight.measureDate}">
                                </td>
                            </tr>
                
                            <tr>
                                <td class="tdTitle">
                                    <img class="time" src="../../images/icon-time.png">
                                </td>
                                <td>
                                    <input class="inputTime" type="time" name="time" value="${weight.measureTime}">
                                </td>
                            </tr>
                
                            <tr>
                                <td class="tdTitle">
                                    <img class="kg" src="../../images/icon-weight.png">
                                </td>
                                <td>
                                    <input class="inputKg" type="number" step="0.01" name="kg" value="${weight.kg}">
                                </td>
                            </tr>
                        </table>                        
                        <div class="btnContainer">
                            <input type="hidden" name="petId" value="${param.petId}">
                            <input type="hidden" name="id" value="${param.id}">
                            <input class="submitBtn" type="button" onclick="check()" value="수정">
                            <a class="cancelBtn" href="weightList?petId=${param.petId}">취소</a>
                            <a class="deleteBtn" href="del?petId=${param.petId}&id=${param.id}" onclick="if(!confirm('삭제할겨?')) return false;">삭제</a>
                        </div>
                    </form>
                </main>