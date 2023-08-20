package controller.admin;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import DAO.DichVuDAO;
import bean.UploadFile;
import entity.DichVu;

@Transactional
@Controller
@RequestMapping("/admin")
public class AdminControllerFoodBeverage {
	@Autowired
	private DichVuDAO dichVuDAO;

	private int itemsPerCol = 5;
	private int rowsPerPage = 2;

	private PagedListHolder getPagedListHolder(List<DichVu> listDichVu, HttpServletRequest request) {
		PagedListHolder pagedListHolder = new PagedListHolder(listDichVu);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(itemsPerCol * rowsPerPage);

		return pagedListHolder;
	}

	@RequestMapping("/food-beverage")
	public String foodBeverage(ModelMap modelMap, HttpServletRequest request) {
		List<DichVu> listDichVu = dichVuDAO.getListDichVu();

		PagedListHolder pagedListHolder = getPagedListHolder(listDichVu, request);

		modelMap.addAttribute("pagedListHolder", pagedListHolder);
		modelMap.addAttribute("itemsPerCol", itemsPerCol);
		return "admin/food-beverage";
	}

	@RequestMapping(value = "food-beverage", params = "btn-search")
	public String searchFoodBeverage(ModelMap modelMap, HttpServletRequest request) {
		List<DichVu> listDichVu = dichVuDAO.searchDichVu(request.getParameter("input-search"));

		PagedListHolder<DichVu> pagedListHolder = getPagedListHolder(listDichVu, request);

		modelMap.addAttribute("pagedListHolder", pagedListHolder);
		modelMap.addAttribute("searchValue", request.getParameter("input-search"));
		modelMap.addAttribute("itemsPerCol", itemsPerCol);

		return "admin/food-beverage";
	}

	@RequestMapping(value = "/food-beverage/{id}.htm", params = "btn-show")
	public String beginEditFoodBeverage(ModelMap modelMap, HttpServletRequest request, 
			@PathVariable("id") Integer id) {
		DichVu dichVu = dichVuDAO.getDichVuById(id);
		//HttpSession session = request.getSession();
		//session.setAttribute("dichVu", dichVu);
		modelMap.addAttribute("dichVu", dichVu);

		return "admin/food-beverage-form";
	}
	
	/*
	 * @Autowired
	 * 
	 * @Qualifier("upload-food-img") UploadFile uploadFile;
	 */
	
	@RequestMapping(value = "/food-beverage/edit-food", method=RequestMethod.POST)
	public String EditFoodBeverage(ModelMap modelMap, HttpSession session,
			@ModelAttribute("dichVu") DichVu dichVuUpdate,
			@RequestParam("hinhAnh") MultipartFile image) {
		
		System.out.println("1");
		//DichVu dichVuSession = (DichVu) session.getAttribute("dichVu");
		
		/*
		 * if(!image.isEmpty()) { //Kiểm tra file hình có tồn tại trong server hay chưa
		 * String path = uploadFile.getPath() + image.getOriginalFilename();
		 * 
		 * File file = new File(path); if (file.exists()) file.delete();
		 * 
		 * try { dichVuSession.setHinhAnh(image.getOriginalFilename());
		 * image.transferTo(file); //Lưu hình vào server } catch(Exception e) {
		 * modelMap.addAttribute("message", "Lỗi lưu file!"); } }
		 */
		
		System.out.println("1");
		//System.out.println(dichVuSession.getMaDichVu());

		//dichVuSession.setTenDichVu(dichVuUpdate.getTenDichVu());
		//dichVuSession.setDonGia(dichVuUpdate.getDonGia());

		Integer temp = 1;
		//dichVuDAO.updateDichVu(dichVuSession);
		if (temp == 1) {
			modelMap.addAttribute("message", "Update thành công!");
		} else {
			modelMap.addAttribute("message", "Update thất bại!");
		}

		return "redirect:/admin/food-beverage.htm";
	}

}
