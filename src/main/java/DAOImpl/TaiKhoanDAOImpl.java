package DAOImpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import DAO.TaiKhoanDAO;
import entity.TaiKhoan;

@Transactional
public class TaiKhoanDAOImpl implements TaiKhoanDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public int soLuongTaiKhoan() {
		long num = 0;
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select COUNT(*) From TaiKhoan";
		Query query = session.createQuery(hql);
		try {
			num =  (long) query.uniqueResult();
		} catch (Exception e) {
			System.out.println(e);
		}
		return (int) num;
	}
	
	@Override
	public boolean themTaiKhoan(TaiKhoan acc) {
		Session session = sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		try {
			acc.setMaTaiKhoan(soLuongTaiKhoan() + 1);
			session.save(acc);
			t.commit();
			return true;
		} catch (Exception ex) {
			System.out.println(ex);
			return false;
		}
	}

	@Override
	public TaiKhoan timTaiKhoan(String email) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "From TaiKhoan Where email = :username";
		Query query = session.createQuery(hql);
		query.setString("username", email);
		TaiKhoan acc = null;
		try {
			acc = (TaiKhoan) query.uniqueResult();
		} catch (Exception e) {
			System.out.println(e);
		}

		return acc;
	}
	
	
	
}
