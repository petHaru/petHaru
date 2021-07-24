<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="css/management/pet/list.css" type="text/css" rel="stylesheet">
<main id="main">

	<div class=container>
		<input type="hidden" id="petId" name="petId" value="">

		<c:forEach var="n" items="${list}">
			<div class="pet-list">

				<div class="box">
					<div class="img-box">
						<img
							src="https://static.parastorage.com/services/instagram-cdn/1.691.0/assets/ig-templates-accounts/Editor/Dogs%20Apparel/03.jpg">
						<!-- <img src="${realPath}/cat.jpg"> -->
					</div>
					<div class="diary-content">
						<h4>${n.name}</h4>
						<div class="button detail-btn" id="detail-button"
							onclick="togglePopup(${n.id})">상세보기</div>
					</div>
					<!--diary-content-->
				</div>
				<!--box-->

			</div>
			<!-- pet-list -->
		</c:forEach>
		</div>		
</main>