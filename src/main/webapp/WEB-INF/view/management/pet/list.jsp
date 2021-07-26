<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="css/management/pet/list.css" type="text/css" rel="stylesheet">
 <script src="/js/management/pet/list.js"></script>
				<main id="main">

					<h1 class="d-none">동물관리 - 반려동물 정보</h1>
					<div id="content">
						<div class="mypet-section">

							<div class="subject">
								<h1>반려동물 관리</h1>
							</div>

							<div class="inner-section">

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

										<div class="profile-popup" id="popup-1-${n.id}">

											<div class="popup-content">
												<div class="close-btn" onclick="togglePopup(${n.id})">×</div>
												<div class="profile-box">

													<div class="img-box">
														<img
															src="https://static.parastorage.com/services/instagram-cdn/1.691.0/assets/ig-templates-accounts/Editor/Dogs%20Apparel/03.jpg">
													</div>
													<div class="dog-info">
														<div class="option">
															<span onclick="updatePopup(${n.id})"><i
																class="fas fa-pencil-alt"></i>수정</span>
															<!-- <a onclick="updatePopup()"href=""><i class="fas fa-pencil-alt"></i>수정</a> -->
															<span class="delete" onclick="confirmPopup(${n.id})"><i
																class="far fa-trash-alt"></i>삭제</span>
															<!-- <a href="" class="delete"><i class="far fa-trash-alt"></i>삭제</a> -->
														</div>
														<div class="detail">
															<div class="pet-id-${n.id}">
																<!-- id 적용 -->
																<div class="detail-name">
																	<h2>${n.name}</h2>
																</div>
																<div class="dog-breed-gender">
																	<span class="d-none">품종</span>
																	<ul>
																		<li class="breed">${n.breed}</li>
																		<li class="gender">|${n.gender}</li>
																	</ul>
																</div>
																<!--dog-breed-gender-->
																<table class="table">
																	<thead>
																		<tr class="table-head">
																			<td>나이</td>
																			<td>특징</td>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>${n.age}살</td>
																			<td>${n.personality}</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
														<!-- detail -->

													</div>
													<!--dog-info-->

												</div>
												<!--profile-box-->
											</div>
											<!--content-->
										</div>
										<!--profile popup-->

										<div class="update-popup" id="popup-2-${n.id}">
											<div class="popup-content">
												<div class="close-btn" onclick="updatePopup(${n.id})">×</div>
												<div class="update-profile-box">
												<div class="update-dnd-section">
													<div class="img-box" id="upload-box2">
														<span class="file-trigger-button">Upload</span> 
														<input
															type="file" class="file-button" name="f">
													</div>
												</div>
													<div class="update-dog-info">
														<form action="edit" method="post">
															<input type="hidden" name="id" value="${n.id}"
																class="hiddenId">
															<div class="dog_name add-container">
																<label class="add-label">이름<span
																	class="necessary">*</span></label> <input class="add-input"
																	type="text" name="name" placeholder="${n.name}">
															</div>

															<div class="dog_breed add-container">
																<label class="add-label">품종<span
																	class="necessary">*</span>
																</label> <select name="breed_id">
																	<option>품종선택</option>
																	<option value="1">골든리트리버</option>
																	<option value="2">말티즈</option>
																	<option value="3">불독</option>
																	<option value="4">비글</option>
																	<option value="5">비숑</option>
																	<option value="6">시츄</option>
																	<option value="7">진돗개</option>
																	<option value="8">치와와</option>
																	<option value="9">포메라니안</option>
																	<option value="10">푸들</option>
																</select>
															</div>

															<div class="dog_birth add-container">
																<label class="add-label">생년월일<span
																	class="necessary">*</span></label>
																</th> <input class="add-input" type="date" name="birthday"
																	placeholder="${n.birthday}">
															</div>

															<div class="dog_gender add-container">
																<label class="add-label">성별<span
																	class="necessary">*</span></label>
																<div class="dog_gender_input">
																	<input type="radio" name="gender" value="암컷">암컷
																	<input type="radio" name="gender" value="수컷">수컷
																</div>
															</div>

															<div class="dog_personality add-container">
																<label class="dog_personality">특징</label>
																<textarea class="add-input-personality"
																	name="personality" cols="10" rows="3"
																	placeholder="반려동물 특징(50자 이내)">${n.personality}</textarea>
															</div>

															<div class="update-button">
																<!-- <a href="" class="button">수정하기</a> -->
																<input type="submit" class="button" value="수정하기">
															</div>
															<!--수정하기버튼-->
														</form>
													</div>
													<!--update dog info-->

												</div>
												<!--update-profile-box-->

											</div>
											<!--popup-content-->
										</div>
										<!--update popup-->

										<div class="confirm-popup" id="popup-4-${n.id}">
											<div class="popup-content">
												<div class="close-btn" onclick="confirmPopup(${n.id})">×</div>
												<form action="del" method="get">
													<div class="confirm-box">
														<h3>알림</h3>
														<p>반려동물 정보를 삭제 하시겠습니까?</p>
														<div class="option-btn">
															<div class="cancel" onclick="confirmPopup(${n.id})">취소</div>
															<!-- <div class="cancel"onclick="confirmPopup()">취소</div> -->
															<a href="del?id=${n.id}" class="delete-btn"
																onclick="resultPopup(${n.id})">삭제</a>
															<!-- <input type="button" name="delete-btn"
														onclick="resultPopup(${n.id})" value="${n.id}">삭제</input> -->

														</div>
													</div>
													<!--confirm box-->
												</form>
											</div>
											<!--content-->
										</div>
										<!--confirm popup-->

										<div class="result-popup" id="popup-5-${n.id}">
											<div class="popup-content">
												<div class="close-btn" onclick="resultPopup(${n.id})">×</div>
												<div class="confirm-box">
													<h3>알림</h3>
													<p>반려동물 정보가 삭제되었습니다.</p>
													<div class="option-btn">
														<div class="result-btn" onclick="resultPopup(${n.id})">
															<span>확인</span>
														</div>
													</div>
												</div>
												<!--dog-info-->
											</div>
											<!--content-->
										</div>
										<!--result popup-->
										<%--<%
									}
									--%>
									</c:forEach>
								</div>
								<!--container-->
							</div>
							<!--inner-section-->

							<div class="btn add">
								<span onclick="addPopup()" href="" class="button big">반려동물
									추가하기</span>
							</div>

						</div>
						<!--mypet-section-->
					</div>
					<!-- content -->

					<div class="add-mypet" id="popup-3">
						<div class="popup-content">
							<div class="close-btn" onclick="addPopup()">×</div>
							<section id="dnd-section">
								<form action="reg" method="post" class="form"
									enctype="multipart/form-data">
									<div class="img-box" id="upload-box">
										<span class="file-trigger-button">Upload</span> <input
											type="file" class="file-button" name="f">
										<!-- 								<div class="progress-status">
									<div>
										<span class="bar">0%</span>
									</div>
								</div> -->
									</div>
							</section>
							<div class="add-dog-info">
								<div class="dog_name add-container">
									<label class="add-label">이름<span class="necessary">*</span></label>
									<input class="add-input" type="text" name="name"
										placeholder="반려동물 이름">
								</div>

								<div class="dog_breed add-container">
									<label class="add-label">품종<span class="necessary">*</span></label>

									<select name="breed_id">
										<option>품종선택</option>
										<option value="1">골든리트리버</option>
										<option value="2">말티즈</option>
										<option value="3">불독</option>
										<option value="4">비글</option>
										<option value="5">비숑</option>
										<option value="6">시츄</option>
										<option value="7">진돗개</option>
										<option value="8">치와와</option>
										<option value="9">포메라니안</option>
										<option value="10">푸들</option>
									</select>
								</div>

								<div class="dog_birth add-container">
									<label class="add-label">생년월일<span class="necessary">*</span></label>
									</th> <input class="add-input" type="date" name="birthday"
										placeholder="반려동물 생일">
								</div>

								<div class="dog_gender add-container">
									<label class="add-label">성별<span class="necessary">*</span></label>
									<div class="dog_gender_input">
										<input type="radio" name="gender" value="암컷">암컷 <input
											type="radio" name="gender" value="수컷">수컷
									</div>
								</div>

								<div class="dog_personality add-container">
									<label class="dog_personality">특징</label>
									<textarea class="add-input-personality" name="personality"
										cols="10" rows="3" placeholder="반려동물 특징(50자 이내)"></textarea>
								</div>

								<div class="add-button">
									<!-- <a href="list.html" class="button">저장하기</a> -->
									<input type="submit" class="button" value="저장하기">
								</div>
								</form>
							</div>
							<!--add-dog-info  -->

						</div>
						<!--popup-content-->
					</div>
					<!--add-mypet-->


				</main>