package controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminControllerFoodBeverage {
	
	@RequestMapping("/food-beverage")
	public String foodBeverage() {
		return "admin/food-beverage";
	}
	
}
