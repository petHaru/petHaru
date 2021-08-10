package com.petharu.web.config;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {


	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		String username = authentication.getName();
		HttpSession session = request.getSession(); 
		
		session.setAttribute("username", username);
		
		// Security가 요청을 가로챈 경우 사용자가 원래 요청했던 URI 정보를 저장한 객체
		RequestCache requestCache = new HttpSessionRequestCache();
		SavedRequest savedRequest = requestCache.getRequest(request, response);

		String uri = "/feed/oneline/list";
		// 있을 경우 URI 등 정보를 가져와서 사용
		if (savedRequest != null) {
			uri = savedRequest.getRedirectUrl();
			
			// 세션에 저장된 객체를 다 사용한 뒤에는 지워줘서 메모리 누수 방지
			requestCache.removeRequest(request, response);

		}

		// 세션 Attribute 확인
		Enumeration<String> list = request.getSession().getAttributeNames();
		while (list.hasMoreElements()) {
			System.out.println(list.nextElement());
		}
		

		System.out.println(uri);
		System.out.println(username);
		response.sendRedirect(uri);

	}

}
