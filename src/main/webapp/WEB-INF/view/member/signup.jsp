<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <main id="main">
                    <div class="signup-main">
                        <section class="signup-form">
                            <h1 class="d-none">ȸ��������</h1>
                            <form action="signup" method="post">
                                <fieldset>
                                    <legend class="d-none"> ȸ������ �ʵ�</legend>
                                        <div class="id-input signup-input-container">
                                            <label class="signup-lable">���̵�</label>
                                            <input class="signup-input" type="text" name="id" placeholder="���� ���� ����/���� ���� 6-20��">
                                        </div>
                                        <div class="password-input signup-input-container">
                                            <label class="signup-lable">��й�ȣ</label>
                                            <input class="signup-input" type="password" name="password" placeholder="���� ���� ����/���� ���� 6-20��">
                                        </div>
   <!--                                      <div class="password-check-input signup-input-container">
                                            <label class="signup-lable">��й�ȣ Ȯ��</label>
                                            <input class="signup-input" type="password">
                                        </div> -->
                                        
                                        <div class="email-input signup-input-container">
                                            <label class="signup-lable">�̸���</label>
                                            <input class="signup-input" name="email" type="text">
                                        </div>
                                        
                                </fieldset>
                        <input class="signup-btn" type="submit" value="�Է� �Ϸ�"></input>     
                            </form>
                        </section>   
                        
                    </div>
                </main>