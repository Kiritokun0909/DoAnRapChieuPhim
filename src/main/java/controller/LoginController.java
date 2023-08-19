package controller;

import java.io.File;
import java.util.Base64;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import DAO.QuyenDAO;
import DAO.QuyenDAO.QuyenEnumID;
import DAO.TaiKhoanDAO;
import bean.UploadFile;
import entity.TaiKhoan;

@Controller
public class LoginController {
	
	@Autowired
	private QuyenDAO quyenDAO;
	
	@Autowired
	private TaiKhoanDAO accountDAO;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("isSigned") != null 
			&& (Boolean) session.getAttribute("isSigned") == true) {
			return "redirect:/login.htm";
		}
		
		return "public/login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(ModelMap model, HttpServletRequest request) {
		TaiKhoan user = accountDAO.timTaiKhoan(request.getParameter("username"));
		HttpSession session = request.getSession();
		
		if (user == null //Không tìm thấy tài khoản
			|| user.isTrangThai() == false	//Tài khoản bị khoá
			|| !(user.getPassword().equals(request.getParameter("pwd")))	//Không đúng mật khẩu
			) {
			session.setAttribute("isSigned", false);
			return "public/login";
		}
		
		//Ghi nhớ tài khoản bằng session
		session.setAttribute("user", user);
		session.setAttribute("isSigned", true);
		
		return "redirect:/home.htm";
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		if(session.getAttribute("isSigned") == null	
			|| (Boolean) session.getAttribute("isSigned") == false) {
			return "redirect:/home.htm";
		}
		
		//Xoá tài khoản khỏi session
		session.removeAttribute("user");
		session.setAttribute("isSigned", false);
		
		return "redirect:/home.htm";
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String register(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		TaiKhoan taiKhoan = new TaiKhoan();
		taiKhoan.setQuyen(quyenDAO.getQuyen(QuyenEnumID.GUEST));
		taiKhoan.setHo(request.getParameter("lastName"));
		taiKhoan.setTen(request.getParameter("firstName"));
		taiKhoan.setEmail(request.getParameter("email"));
		taiKhoan.setPassword(request.getParameter("password"));
		taiKhoan.setSdt(request.getParameter("phone"));
		taiKhoan.setDiaChi(request.getParameter("address"));
		taiKhoan.setTrangThai(true);
		taiKhoan.setAvatar("abc");

		if(accountDAO.themTaiKhoan(taiKhoan)) { 
			System.out.print("Ghi tai khoan thanh cong"); 
		} else {
			System.out.println("Ghi tai khoan that bai");
		}
		
		 return "redirect:/login.htm";
	}
	
	
}
