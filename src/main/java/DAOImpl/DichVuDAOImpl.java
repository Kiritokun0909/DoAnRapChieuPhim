package DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import DAO.DichVuDAO;
import entity.DichVu;


@Transactional
public class DichVuDAOImpl implements DichVuDAO{
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public List<DichVu> getListDichVu() {
		Session sesson = sessionFactory.getCurrentSession();
		String hql = "from DichVu";
		Query query = sesson.createQuery(hql);
		return (List<DichVu>)query.list();
	}
}
