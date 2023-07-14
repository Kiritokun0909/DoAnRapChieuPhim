package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicController {
	@RequestMapping("home")
	public String home() {
		return "public/home";
	}
	
	@RequestMapping("sign-up")
	public String signUp() {
		return "public/sign-up";
	}
}
