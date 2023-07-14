package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("employee/")
public class EmployeeController {
	@RequestMapping("home")
	public String home() {
		return "employee/home";
	}
	
	@RequestMapping("film")
	public String film() {
		return "employee/film";
	}
	
	@RequestMapping("calendar")
	public String calendar() {
		return "employee/calendar";
	}
	
	@RequestMapping("ticket")
	public String ticket() {
		return "employee/ticket";
	}
}
