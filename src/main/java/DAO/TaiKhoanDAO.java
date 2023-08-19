package DAO;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import entity.Quyen;
import entity.TaiKhoan;

@Transactional
public interface TaiKhoanDAO {
	
	public int soLuongTaiKhoan();
	
	public boolean themTaiKhoan(TaiKhoan tk);
	
	public boolean suaTaiKhoan(TaiKhoan tk);
	
	public boolean xoaTaiKhoan(TaiKhoan tk);
	
	public TaiKhoan timTaiKhoan(String email);

	/*
	 * public TaiKhoan getAccount(int id);
	 * 
	 * 
	 * 
	 * 
	 * 
	 * public List<TaiKhoan> listAccountWithRole(EnumRoleID roleID);
	 * 
	 * public List<TaiKhoan> listAccounts();
	 * 
	 * public boolean updateAccount(TaiKhoan account);
	 * 
	 * public boolean deleteAccount(TaiKhoan account);
	 */
}
