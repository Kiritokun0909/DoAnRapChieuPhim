package controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import DAO.DichVuDAO;
import entity.DichVu;

@Transactional
@Controller
@RequestMapping("/admin")
public class AdminControllerFoodBeverage {
	@Autowired
	private DichVuDAO dichVuDAO;
	
	@Autowired
	SessionFactory sessionFactory;
	
	@RequestMapping("/food-beverage")
	public String foodBeverage(ModelMap modelMap, HttpServletRequest request) {
		List<DichVu> listDichVu = dichVuDAO.getListDichVu();
		
//		PagedListHolder<DichVu> pagedListHolder = new PagedListHolder<DichVu>(listDichVu);
//		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
//		pagedListHolder.setPage(page);
//		pagedListHolder.setMaxLinkedPages(5);
//		pagedListHolder.setPageSize(10);
//		
//		modelMap.addAttribute("listDichVu", pagedListHolder);
		modelMap.addAttribute("listDichVu", listDichVu);
		return "admin/food-beverage";
	}
}
