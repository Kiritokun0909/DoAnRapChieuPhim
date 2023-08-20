package DAO;

import java.util.List;

import entity.DichVu;

public interface DichVuDAO {
	List<DichVu> getListDichVu();
	DichVu getDichVuById(Integer id);
	List<DichVu> searchDichVu(String tenDichVu);
	Integer updateDichVu(DichVu dv);
}
