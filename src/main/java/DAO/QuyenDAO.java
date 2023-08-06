package DAO;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import entity.Quyen;

@Transactional
public interface QuyenDAO {
	public static enum QuyenEnumID{
		GUEST, EMPLOYEE, ADMIN
	}
	
	List<Quyen> getListQuyen();
	
	public Quyen getQuyen(QuyenEnumID quyen);
}
