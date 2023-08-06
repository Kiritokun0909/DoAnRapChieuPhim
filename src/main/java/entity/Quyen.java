package entity;


import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="QUYEN")
public class Quyen {
	@Id
	@Column(name="MaQuyen")
	private int maQuyen;
	
	@Column(name="TenQuyen")
	private String tenQuyen;
	
	@OneToMany(mappedBy = "quyen", fetch = FetchType.EAGER)
	Collection<TaiKhoan> listTaiKhoan;
	
	
	public Quyen() {
		super();
	}

	public int getMaQuyen() {
		return maQuyen;
	}

	public void setMaQuyen(int i) {
		this.maQuyen = i;
	}

	public String getTenQuyen() {
		return tenQuyen;
	}

	public void setTenQuyen(String tenQuyen) {
		this.tenQuyen = tenQuyen;
	}

	public Collection<TaiKhoan> getListTaiKhoan() {
		return listTaiKhoan;
	}

	public void setListTaiKhoan(Collection<TaiKhoan> listTaiKhoan) {
		this.listTaiKhoan = listTaiKhoan;
	}
	
}
