package entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="TAIKHOAN")
public class TaiKhoan {
	@Id
	@Column(name="MaTaiKhoan")
	private int maTaiKhoan;

	@Column(name="Ho")
	private String ho;
	
	@Column(name="Ten")
	private String ten;

	@Column(name="DiaChi")
	private String diaChi;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="SDT")
	private String sdt;
	
	@Column(name="Password")
	private String password;
	
	@ManyToOne
	@JoinColumn(name="MaQuyen")
	private Quyen quyen;

	@Column(name="Avatar")
	private String avatar;
	
	@Column(name="TrangThai")
	private boolean trangThai;
	
	public TaiKhoan() {
		super();
	}
	
	public TaiKhoan(Quyen quyen) {
		this.quyen = quyen;
	}

	public int getMaTaiKhoan() {
		return maTaiKhoan;
	}

	public void setMaTaiKhoan(int maTaiKhoan) {
		this.maTaiKhoan = maTaiKhoan;
	}

	public String getHo() {
		return ho;
	}

	public void setHo(String ho) {
		this.ho = ho;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public boolean isTrangThai() {
		return trangThai;
	}

	public void setTrangThai(boolean trangThai) {
		this.trangThai = trangThai;
	}

	public Quyen getQuyen() {
		return quyen;
	}

	public void setQuyen(Quyen quyen) {
		this.quyen = quyen;
	}
	
	
}
