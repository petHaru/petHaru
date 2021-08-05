<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <main id="main">
                    <div class="signup-main">
                        <section class="signup-form">
                            <h1 class="d-none">회원가입폼</h1>
                            <form action="signup" method="post">
                                <fieldset>
                                    <legend class="d-none"> 회원가입 필드</legend>
                                        <div class="id-input signup-input-container">
                                            <label class="signup-lable">아이디</label>
                                            <input class="signup-input" type="text" name="id" placeholder="공백 없는 영문/숫자 포함 6-20자">
                                        </div>
                                        <div class="password-input signup-input-container">
                                            <label class="signup-lable">비밀번호</label>
                                            <input class="signup-input" type="password" name="password" placeholder="공백 없는 영문/숫자 포함 6-20자">
                                        </div>
   <!--                                      <div class="password-check-input signup-input-container">
                                            <label class="signup-lable">비밀번호 확인</label>
                                            <input class="signup-input" type="password">
                                        </div> -->
                                        
                                        <div class="email-input signup-input-container">
                                            <label class="signup-lable">이메일</label>
                                            <input class="signup-input" name="email" type="text">
                                        </div>
                                        
                                </fieldset>
                        <input class="signup-btn" type="submit" value="입력 완료"></input>     
                            </form>
                        </section>   
                        
                    </div>
                </main>