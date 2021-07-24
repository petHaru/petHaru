<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
 <script src="/js/management/schedule/calendar.js"></script>
    <script src="/js/management/schedule/add.js"></script>
<main id="main">
	<section id="content-wrap">
		<table class="calendar">
			<thead>
				<tr class="btn-wrap">
					<td colspan="2"><label class="prev-month"> &#60; </label></td>
					<td class="current-year-month" colspan="3"></td>
					<td><label class="next-month"> &#62; </label></td>
					<td>
						<div>
							<input class="btn-add" type="button" value="일정 추가">
						</div>
					</td>
				</tr>
				<tr class="day-wrap">
					<td class="sun">Sun</td>
					<td>Mon</td>
					<td>Tue</td>
					<td>Wed</td>
					<td>Thu</td>
					<td>Fri</td>
					<td class="sat">Sat</td>
				</tr>
			</thead>
		</table>
		<div class="overlay d-none"></div>
		<div class="popup-wrapper d-none">
			<div class="add-schedule">
				<div class="close-btn">
					<img src="../../images/icon-close-btn.png" alt="">

				</div>
				<div class="add-schedule-form">

					<h1 class="d-none">일정추가</h1>
					<form action="reg" method="post">
						<div class="schedule-input-container title-container">
							<label class="schedule-lable title-lable d-none" for="">제목</label>
							<input class="title-input" type="text" placeholder="제목"
								name="title">
						</div>
						<div class="schedule-input-container date-time-container">
							<label class="schedule-lable  date-time-lable btn" for="">일시</label>

							<input type="datetime-local" name="datetime">

						</div>
						<div class="schedule-input-container content-container">
							<label class="schedule-lable content-lable btn" for="">내용</label>
							<textarea class="content-input" cols="40" rows="7"
								placeholder="내용" name="content"></textarea>
						</div>


						<div class="hashtag-container">

							<input class="hashtag hashtag1" id="hashtag1" type="radio"
								name="scheduleType" value="진료"> <label for="hashtag1">#진료</label>
							<input class="hashtag hashtag2" id="hashtag2" type="radio"
								name="scheduleType" value="접종"> <label for="hashtag2">#예방접종</label>
							<input class="hashtag hashtag3" id="hashtag3" type="radio"
								name="scheduleType" value="미용"> <label for="hashtag3">#미용</label>
							<input class="hashtag hashtag4" id="hashtag4" type="radio"
								name="scheduleType" value="기타"> <label for="hashtag4">#기타</label>

						</div>


						<div class="submit">

							<input class="submit-btn" type="submit" value="등록">
						</div>
					</form>
				</div>

			</div>
		</div>

		<div class="overlay2 d-none"></div>
		<div class="popup-wrapper2 d-none">
			<div class="add-schedule">
				<div class="close-btn">
					<img src="../../images/icon-close-btn.png" alt="">

				</div>
				<div class="add-schedule-form">

					<h1 class="d-none">일정추가</h1>
					<form action="reg" method="post">
						<div class="schedule-input-container title-container">
							<label class="schedule-lable title-lable d-none" for="">제목</label>
							<input class="title-input" type="text" placeholder="제목"
								name="title">
						</div>
						<div class="schedule-input-container date-time-container">
							<label class="schedule-lable  date-time-lable btn" for="">일시</label>

							<input type="datetime-local" name="datetime">

						</div>
						<div class="schedule-input-container content-container">
							<label class="schedule-lable content-lable btn" for="">내용</label>
							<textarea class="content-input" cols="40" rows="7"
								placeholder="내용" name="content"></textarea>
						</div>


						<div class="hashtag-container">

							<input class="hashtag hashtag1" id="hashtag1" type="radio"
								name="scheduleType" value="진료"> <label for="hashtag1">#진료</label>
							<input class="hashtag hashtag2" id="hashtag2" type="radio"
								name="scheduleType" value="접종"> <label for="hashtag2">#예방접종</label>
							<input class="hashtag hashtag3" id="hashtag3" type="radio"
								name="scheduleType" value="미용"> <label for="hashtag3">#미용</label>
							<input class="hashtag hashtag4" id="hashtag4" type="radio"
								name="scheduleType" value="기타"> <label for="hashtag4">#기타</label>

						</div>

						<div class="submit">

							<input class="submit-btn" type="submit" value="수정">
						</div>
					</form>
				</div>

			</div>
		</div>

		<div class="schedule-detail d-none"></div>
	</section>

</main>

     <script>
     	
        var today = new Date(); //오늘 날짜
        var year = today.getFullYear(); //올해
        var month = today.getMonth(); //이번달
        console.log(year);
        console.log(month);
        YM = year+"."+(month+1);
        var calendar = document.querySelector(".calendar");
        var currentYM = calendar.querySelector(".current-year-month");
        currentYM.innerHTML = YM;

        firstDate = new Date(year,month,1,0,0,0,0).getDate();//이번달의 첫째날 항상1아닌지..;
        console.log(firstDate);
        lastDate = new Date(year,month+1,0,0,0,0,0).getDate();//이번달의 마지막날
        console.log(lastDate);
        firstDay = new Date(year,month,1,0,0,0,0).getDay();//이번달의 첫째날의 요일
        console.log(firstDay);

    </script>