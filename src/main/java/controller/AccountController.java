package controller;

import java.io.File;

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
import DAO.TaiKhoanDAO;
import bean.UploadFile;
import entity.TaiKhoan;

@Controller
public class AccountController {
	@Autowired
	private TaiKhoanDAO accountDAO;
	
	@RequestMapping(value="account", method=RequestMethod.GET)
	public String accountProfile(ModelMap model, HttpServletRequest request, HttpSession session) {
		session = request.getSession();
		if(session.getAttribute("isSigned") == null 
			|| (Boolean) session.getAttribute("isSigned") == false) {
			return "redirect:/login.htm";
		}
		
		TaiKhoan user = (TaiKhoan) session.getAttribute("user");
		
		model.addAttribute("user", user);
		return "public/accountProfile";
	}
	
	@Autowired
	UploadFile uploadFile;
	
	@RequestMapping(value="update-profile", method=RequestMethod.GET)
	public String doGetUpdateProfile(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("isSigned") == null 
			|| (Boolean) session.getAttribute("isSigned") == false) {
			return "redirect:/login.htm";
		}
		return "redirect:/account.htm";
	}
	
	@RequestMapping(value="update-profile", method=RequestMethod.POST)
	public String updateProfile(ModelMap model, HttpSession session,
			@ModelAttribute("user") TaiKhoan userUpdate,	//Thông tin cập nhật trên form
			@RequestParam("new-avatar") MultipartFile image) {
		//Lấy tài khoản user hiện tại đang đăng nhập
		TaiKhoan user = (TaiKhoan) session.getAttribute("user");
		
		//Thay avatar nếu người dùng tải file lên
		if(!image.isEmpty()) {
			//Kiểm tra file hình có tồn tại trong server hay chưa
			String path = uploadFile.getPath() + image.getOriginalFilename();
			
			File file = new File(path);
			if (file.exists()) file.delete();
			
			try {
				user.setAvatar(image.getOriginalFilename());
				image.transferTo(file);	//Lưu hình vào server
			} catch(Exception e) {
				model.addAttribute("message", "Lỗi lưu file!");
			}
		}
		
		user.setHo(userUpdate.getHo());
		user.setTen(userUpdate.getTen());
		user.setEmail(userUpdate.getEmail());
		user.setSdt(userUpdate.getSdt());
		user.setDiaChi(userUpdate.getDiaChi());
		
		accountDAO.suaTaiKhoan(user);
		session.setAttribute("user", user);
		
		return "redirect:account.htm";
	}
}
