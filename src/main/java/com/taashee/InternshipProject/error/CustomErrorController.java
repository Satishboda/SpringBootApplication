package com.taashee.InternshipProject.error;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomErrorController implements ErrorController {
private final Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@GetMapping("/error")
	public String handleError(HttpServletRequest request, ModelMap map) {
		Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
		if(Objects.nonNull(status))
		{
			Integer statusCode = Integer.valueOf(status.toString());
			if(statusCode.equals(HttpStatus.NOT_FOUND.value())) {
				logger.info("Page not found: {}, status_code: {}", request.getServletPath(), statusCode);
				map.put("timestamp", LocalDateTime.now());
				map.put("status", statusCode);
				map.put("error", "Page not found. Please check your URL");
				return "error";
			}
			else if(statusCode.equals(HttpStatus.INTERNAL_SERVER_ERROR.value())) {
				logger.info("Server Error: {}, status_code: {}", request.getServletPath(), statusCode);
				map.put("timestamp", LocalDateTime.now());
				map.put("status", statusCode);
				map.put("error", map.get("error"));
				return "error";
			}
			else if (statusCode.equals(HttpStatus.FORBIDDEN.value())) {
			    logger.info("Forbidden Error: {}, status_code: {}", request.getServletPath(), statusCode);
			    map.put("timestamp", LocalDateTime.now());
			    map.put("status", statusCode);
			    map.put("error","Forbidden");
			    return "error";
			}
 
		}
		return "error";
	}

}
