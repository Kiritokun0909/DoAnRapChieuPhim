package controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import DAO.DichVuDAO;
import DAO.QuyenDAO;
import DAO.QuyenDAO.QuyenEnumID;
import DAO.TaiKhoanDAO;
import entity.DichVu;
import entity.TaiKhoan;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	private TaiKhoanDAO accountDAO;
	
	@RequestMapping("manage-employee")
	public String listNhanVien(ModelMap model, HttpServletRequest request) {
		List<TaiKhoan> listTaiKhoan = accountDAO.getListTaiKhoanViaRole(QuyenEnumID.EMPLOYEE);
		
		model.addAttribute("list", listTaiKhoan);
		return "admin/manage-employee";
	}
}
