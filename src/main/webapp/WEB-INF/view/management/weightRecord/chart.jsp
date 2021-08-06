<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<main id="main">
	<input class="petId" type="hidden" value="${param.petId}" />

	<div class="totalContainer">
		<canvas id="totalChart"></canvas>
	</div>
	
	<div class="container">
		<c:forEach var="n" begin="0" end="${weekSize-1}">
			<div class="weekContainer" style="display:none;">	
				<canvas class="chart" id="weekChart${n}"></canvas>
			</div>
		</c:forEach>
	</div>

	<button class="totalBtn">전체 평균체중 변화</button>
	<button class="weekBtn">주차별 체중 변화</button>
</main>