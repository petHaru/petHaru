<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/member/signup.css" type="text/css" rel="stylesheet">
</head>
<body>
    <div id="root">
        <header id="header">
            <div class="float-content">
                <div class="flex align-center">

                    <div class="logo-title-container">
                        <img src="../images/logo.png" alt="">
                    </div>
                    <div class="title">SIGNUP</div>
                </div>
            </div>
        </header>
        
        <!-- <nav id="nav">
            <ul>
                <li>nav1</li>
                <li>nav2</li>
            </ul>
        </nav> -->

        <div id="body">
            <div class="float-content">
                <!-- <aside id="aside">
                </aside> -->
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
            </div>
        </div>

        <footer id="footer"></footer>


    </div>
    
</body>
</html>