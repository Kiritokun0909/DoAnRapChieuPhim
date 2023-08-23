package DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import DAO.DichVuDAO;
import entity.DichVu;


@Transactional
public class DichVuDAOImpl implements DichVuDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public int soLuongDichVu() {
		long num = 0;
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select COUNT(*) From DichVu";
		Query query = session.createQuery(hql);
		try {
			num =  (long) query.uniqueResult();
		} catch (Exception e) {
			System.out.println(e);
		}
		return (int) num;
	}
	
	@Override
	public List<DichVu> getListDichVu() {
		Session sesson = sessionFactory.getCurrentSession();
		String hql = "from DichVu";
		Query query = sesson.createQuery(hql);
		return (List<DichVu>)query.list();
	}
	
	@Override
	public DichVu getDichVuById(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM DichVu WHERE maDichVu = :maDichVu";
		Query query = session.createQuery(hql);
		query.setParameter("maDichVu", id);
		/* System.out.println(query.getQueryString()); */
		return (DichVu)query.list().get(0);
	}
	
	@Override
	public List<DichVu> searchDichVu(String tenDichVu) {
		Session sesson = sessionFactory.getCurrentSession();
		String hql = "FROM DichVu WHERE tenDichVu LIKE :tenDichVu";
		Query query = sesson.createQuery(hql);
		query.setParameter("tenDichVu", "%" + tenDichVu + "%");
		return (List<DichVu>)query.list();
	}
	
	@Override
	public boolean updateDichVu(DichVu dichVu){
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.update(dichVu);
			transaction.commit();
		}
		catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
			transaction.rollback();
			return false;
		}
		finally {
			session.close();
		}
		return true;
	}
	
	@Override
	public boolean insertDichVu(DichVu dichVu) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			dichVu.setMaDichVu(soLuongDichVu() + 1);
			session.save(dichVu);
			transaction.commit();
		} catch (Exception ex) {
			System.out.println(ex);
		// TODO: handle exception
					transaction.rollback();
					return false;
		}
		finally {
			session.close();
		}
		return true;
	}

}
