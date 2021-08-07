<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main id="main">
        <div class="subject">
            <h1 class="title">반려동물 선택</h1>
        </div>
        <div class="petList">
	        <c:forEach var="n" items="${list}">
        		<div class="pet">
                	<a href="weightList?petId=${n.id}"><img class="img" src="../../images/${n.image}"></a>
                	<p class="petName">${n.name}</p>
            	</div>
	        </c:forEach>
        </div>
</main>