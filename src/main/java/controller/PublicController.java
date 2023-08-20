package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicController {
	@RequestMapping("movieInformation")
	public String movieInformation() {
		return "public/movieInformation";
	}
}
