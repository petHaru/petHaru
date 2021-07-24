<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main id="main">
    <fieldset class="form">
        <form class="weight-input" action="WeightReg" method="post">
             <h1 class="d-none">펫 선택</h1>
<!-- 	                            <div class="petphoto">
	                                <ol>
	                                    <li><a class="img pet1 current" href="">강아지1</a></li>
	                                    <li><a class="img pet2" href="">강아지2</a></li>
	                                    <li><a class="img pet3" href="">강아지3</a></li>
	                                    <li><a class="img pet4" href="">강아지4</a></li>
	                                </ol>
	                            </div> -->

             <div class="record">기록하기</div>
             <div class="weight-input-container">
                 <legend class="d-none">날짜입력</legend>
                 <label class="img date"></label>
                 <input class="input-date" type="date" name="date">
             </div>

             <div class="weight-input-container">
                 <legend class="d-none">시간입력</legend>
                 <label class="img time"></label>
                 <input class="input-time" type="time" name="time">
             </div>

             <div class="weight-input-container">
                 <legend class="d-none">몸무게 입력</legend>
                 <label class="img weight"></label>
                 <input class="input-weight" type="number" step="0.01" name="kg">
             </div>

             <div>
             	<input type="hidden" name="petid" value="${param.petid}">
             	<input type="hidden" name="petname" value="${param.petname}">
                <input class="submit" type="submit" value="등록">
             </div>
             
            
         </form>

    </fieldset>
</main>