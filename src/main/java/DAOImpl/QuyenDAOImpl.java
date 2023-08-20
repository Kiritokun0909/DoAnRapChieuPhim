package DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import DAO.QuyenDAO;
import DAO.QuyenDAO.QuyenEnumID;
import entity.DichVu;
import entity.Quyen;
import entity.TaiKhoan;

@Transactional
public class QuyenDAOImpl implements QuyenDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Quyen> getListQuyen() {
		Session sesson = sessionFactory.getCurrentSession();
		String hql = "From Quyen";
		Query query = sesson.createQuery(hql);
		return (List<Quyen>)query.list();
	}
	
	public String getTenQuyenViaEnum(QuyenEnumID maQuyen) {
		String tenQuyen = "";
		if(maQuyen == QuyenEnumID.GUEST) {
			tenQuyen = "Khách hàng";
		}
		else if(maQuyen == QuyenEnumID.ADMIN) {
			tenQuyen = "Quản lý";
		}
		else {
			tenQuyen = "Nhân viên";
		}
		return tenQuyen;
	}
	
	@Override
	public Quyen getQuyen(QuyenEnumID maQuyen) {
		Session session = sessionFactory.getCurrentSession();
		
		String tenQuyen = getTenQuyenViaEnum(maQuyen);
		String hql = "From Quyen Where tenQuyen = :tenQuyen";
		Query query = session.createQuery(hql);
		query.setParameter("tenQuyen", tenQuyen);
		
		Quyen quyen = null;
		try {
			quyen = (Quyen) query.uniqueResult();
		} catch (Exception ex) {
			
		}
		return quyen;
	}
	
	
}
