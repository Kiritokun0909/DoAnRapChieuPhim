package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import DAO.QuyenDAO;
import DAO.QuyenDAO.QuyenEnumID;
import DAO.TaiKhoanDAO;
import entity.TaiKhoan;

@Controller
public class LoginController {
	
	@Autowired
	private QuyenDAO quyenDAO;
	
	@Autowired
	private TaiKhoanDAO accountDAO;
	
	//Kiểm tra có tài khoản đang đăng nhập trong session hiện tại
	public boolean isLogin(HttpSession session) {
		if(session.getAttribute("isSigned") != null	
			&& (Boolean) session.getAttribute("isSigned") == true) {
			return true;
		}
		return false;
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String goToLoginPage(HttpServletRequest request, RedirectAttributes ra) {
		if(isLogin(request.getSession())) {
			return "redirect:/home.htm";
		}
		
		return "public/login";
	}
	
	public boolean isAdmin(TaiKhoan user) {
		if(user.getQuyen().getTenQuyen().equals("Quản lý")) {
			return true;
		}
		return false;
	}
	
	public boolean isEmployee(TaiKhoan user) {
		if(user.getQuyen().getTenQuyen().equals("Nhân viên")) {
			return true;
		}
		return false;
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(ModelMap model, HttpServletRequest request, RedirectAttributes ra) {
		HttpSession session = request.getSession();
		TaiKhoan user = accountDAO.timTaiKhoan(request.getParameter("username"));
		
		if (user == null //Không tìm thấy tài khoản
			|| user.isTrangThai() == false	//Tài khoản bị khoá
			|| !(user.getPassword().equals(request.getParameter("pwd")))	//Không đúng mật khẩu
			) {
			session.setAttribute("isSigned", false);
			return "public/login";
		}
		
		//Ghi nhớ tài khoản đang đăng nhập bằng session
		session.setAttribute("user", user);
		session.setAttribute("isSigned", true);
		
		if(isAdmin(user)) {
			return "redirect:/home.htm";
		}
		if(isEmployee(user)) {
			return "redirect:/employee/home.htm";
		}
		
		return "redirect:/home.htm";
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		
		if(!isLogin(session)) {
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
