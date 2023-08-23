package DAO;

import java.util.List;

import entity.DichVu;

public interface DichVuDAO {
	int soLuongDichVu();
	List<DichVu> getListDichVu();
	DichVu getDichVuById(Integer id);
	List<DichVu> searchDichVu(String tenDichVu);
	boolean updateDichVu(DichVu dv);
	boolean insertDichVu(DichVu dv);
}
