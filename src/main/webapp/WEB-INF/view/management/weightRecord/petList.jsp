<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main id="main">
    <div class="pet-list-box">
        <div class="subject">
            <h1 class="title">반려동물 선택</h1>
        </div>
        <div class="pet-list">
        <c:forEach var="n" items="${list}">
        		<div class="pet">
                <a href="table?petid=${n.id}"><img class="img" src="../../images/pet1.png"></a>
                ${n.name}
            	</div>
        </c:forEach>
        </div>
    </div>
</main>