<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <main id="main">
                    <div class="record">
                        
                        <table class="record-table">
    
                            <h1 class="record-title">체중 통계</h1>
                            <thead>
                                <tr>
                                    <td>기간 말일</td>
                                    <td>주 평균</td>
                                    <td>전주대비</td>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="n" items="${weightList}">
                                <tr>
                                    <td>${n.measureDate}</td>
                                    <td>4.93 KG</td>
                                    <td class="down">▼0.30 KG</td>
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