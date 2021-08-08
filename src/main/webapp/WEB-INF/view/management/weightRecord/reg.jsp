<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <main id="main">
                    <div class="subject">
			            <h1 class="title">기록하기</h1>
			        </div>
                    <form class="form" action="reg" method="post">
                        <table class="regTable">
                            <tr>
                                <td class="tdTitle">
                                    <img class="date" src="../../images/icon-calendar.png">
                                </td>
                                <td>
                                    <input class="input-date" type="date" name="date">
                                </td>
                            </tr>
                
                            <tr>
                                <td class="tdTitle">
                                    <img class="time" src="../../images/icon-time.png">
                                </td>
                                <td>
                                    <input class="input-time" type="time" name="time">
                                </td>
                            </tr>
                
                            <tr>
                                <td class="tdTitle">
                                    <img class="kg" src="../../images/icon-weight.png">
                                </td>
                                <td>
                                    <input class="input-weight" type="number" step="0.01" name="kg">
                                </td>
                            </tr>
                        </table>
                        <div class="btnContainer">
                            <input type="hidden" name="petId" value="${param.petId}">
                            <input class="submitBtn" type="submit" value="등록">
                            <a class="cancelBtn" href="weightList?petId=${param.petId}">취소</a>
                        </div>
                    </form>
                </main>