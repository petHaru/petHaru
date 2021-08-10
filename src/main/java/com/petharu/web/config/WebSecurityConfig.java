package com.petharu.web.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private DataSource dataSource;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()
			.antMatchers("/management/schedule/**").hasAnyRole("MEMBER")	
			.and() // 경로 설정 끝냄
		.formLogin() //권한x일때 로그인페이지로
			.loginPage("/")
//			.loginProcessingUrl("/member/dologin")
			.successHandler(new LoginSuccessHandler())
			.failureHandler(new LoginFailedHandler())
			.and()
			.logout()
			.logoutUrl("/doLogout")
			.logoutSuccessUrl("/")
			.invalidateHttpSession(true) //로그아웃 후 Session값 지움
			.and()
		.csrf() //csrf설정
			.disable(); //끄겠다
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
			.jdbcAuthentication()
			.dataSource(dataSource)
			//사용자 정보를 가져오기
			.usersByUsernameQuery("select userId id,password, 1 enabled from Member where userId=?")
			//그 사용자의 역할 정보를 가져오기
			.authoritiesByUsernameQuery("select userId id, 'ROLE_MEMBER' roleId from Member where userId =?")
			.passwordEncoder(new BCryptPasswordEncoder());
			
	}

}
