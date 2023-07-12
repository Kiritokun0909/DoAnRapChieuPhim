package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/")
public class AdminController {
	@RequestMapping("room")
	public String room() {
		return "admin/room";
	}
	
	@RequestMapping("movie")
	public String movie() {
		return "admin/movie";
	}
}
