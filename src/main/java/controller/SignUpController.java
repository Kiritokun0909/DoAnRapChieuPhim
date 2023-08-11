package controller;

import java.util.Base64;
import java.util.Date;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import DAO.QuyenDAO;
import DAO.QuyenDAO.QuyenEnumID;
import DAO.TaiKhoanDAO;
import entity.TaiKhoan;

@Controller
public class SignUpController {
	@Autowired
	private TaiKhoanDAO accountDAO;
	
	@Autowired
	private QuyenDAO quyenDAO;
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginHome() {
		return "public/login";
	}
	
	public Cookie readCookie(HttpServletRequest request, String name) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equalsIgnoreCase(name)) {
					String decodedvalue = new String(Base64.getDecoder().decode(cookie.getValue()));
					cookie.setValue(decodedvalue);
					return cookie;
				}
			}
		}
		return null;
	}

	public Cookie createCookie(String name, String value, int days) {
		String encodedValue = Base64.getEncoder().encodeToString(value.getBytes());
		Cookie cookie = new Cookie(name, encodedValue);
		cookie.setMaxAge(days * 24 * 60 * 60);
		cookie.setPath("/");
		return cookie;
	}
	
	public void deleteCookie(String name) {
		this.createCookie(name, "", 0);
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		TaiKhoan user = accountDAO.timTaiKhoan(request.getParameter("username"));

		//Kiểm tra
		if (user == null //Không tìm thấy tài khoản
			|| user.isTrangThai() == false	//Tài khoản bị khoá
			|| !(user.getPassword().equals(request.getParameter("pwd")))	//Không đúng mật khẩu
			) {
			boolean SignedIn= false;
			model.addAttribute("SignedIn", SignedIn);
			return "public/login";
		}
		boolean SignedIn = true;
		model.addAttribute("SignedIn", SignedIn);

		System.out.println("Login thanh cong");
		System.out.println(user.getHo());
		System.out.println(user.getTen());
		//Ghi nhớ tài khoản bằng session
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		//chuyển trang theo quyền tương ứng sau khi đăng nhập thành công
		if(user.getQuyen().getTenQuyen().equals("Khách hàng")) {
			return "public/accountInformation";
		}
		else if(user.getQuyen().getTenQuyen().equals("Quản lý")) {
			return "public/home";
		}
		else {
			
			return "public/home";
		}
		//Cách lấy dữ liệu xem hàm test 
	}
	
	@RequestMapping(value="test", method=RequestMethod.GET)
	public String test(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		TaiKhoan tk = (TaiKhoan) session.getAttribute("user");
		
		model.addAttribute("email", tk.getEmail());
		model.addAttribute("pass", tk.getPassword());
		return "test";
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		//Xoá tài khoản khỏi session
		HttpSession session = request.getSession();
		session.removeAttribute("user");

		return "public/index";
	}
	
	@SuppressWarnings("deprecation")
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
		
		Date birthday = new Date();
		birthday.setDate(Integer.parseInt(request.getParameter("day")));
		birthday.setMonth(Integer.parseInt(request.getParameter("month")));
		birthday.setYear(Integer.parseInt(request.getParameter("year")));
		taiKhoan.setNgaySinh(birthday);

		if(accountDAO.themTaiKhoan(taiKhoan)) { 
			System.out.print("Ghi tai khoan thanh cong"); 
		} else {
			System.out.println("Ghi tai khoan that bai");
		}
		
		 return "public/login";
	}
	
	@RequestMapping(value="account", method=RequestMethod.GET)
	public String account() {
		return "public/account";
	}
}
