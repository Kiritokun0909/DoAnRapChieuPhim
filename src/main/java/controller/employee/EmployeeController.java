package controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee/")
public class EmployeeController {
	@RequestMapping("home")
	public String goToEmployeeHomePage() {
		return "employee/home";
	}
	
	
}
