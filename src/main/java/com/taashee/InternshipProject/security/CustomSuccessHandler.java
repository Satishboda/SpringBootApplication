package com.taashee.InternshipProject.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Service;

import com.taashee.InternshipProject.entity.User;

@Service
public class CustomSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
	private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		if (isAdmin(authentication)) {
			redirectStrategy.sendRedirect(request, response,
					"/adminDashboard");
		} else if (isInstructor(authentication)) {

			redirectStrategy.sendRedirect(request, response,"/instructorDashboard");

		} else {
			redirectStrategy.sendRedirect(request, response,
					"/studentDashboard");
		}
	}

	private boolean isAdmin(Authentication authentication) {
		return authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_ADMIN"));
	}

	private boolean isInstructor(Authentication authentication) {
		return authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_INSTRUCTOR"));
	}
}
