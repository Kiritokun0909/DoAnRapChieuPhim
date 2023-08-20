package DAO;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import DAO.QuyenDAO.QuyenEnumID;
import entity.Quyen;
import entity.TaiKhoan;

@Transactional
public interface TaiKhoanDAO {
	
	public int soLuongTaiKhoan();
	
	public boolean themTaiKhoan(TaiKhoan tk);
	
	public boolean suaTaiKhoan(TaiKhoan tk);
	
	public boolean xoaTaiKhoan(TaiKhoan tk);
	
	public TaiKhoan timTaiKhoan(String email);
	
	List<TaiKhoan> getListTaiKhoanViaRole(QuyenEnumID quyen);
	
	public TaiKhoan getAccount(int id);

}
