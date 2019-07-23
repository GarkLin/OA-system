package ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import ssh.entity.Welfare;
public class WelfareDaoImpl implements WelfareDao{
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public List<Welfare> Welfare(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Welfare w where w.ids=1");
		List<Welfare> list = query.getResultList();
		for(Welfare welfare:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Welfare> Welfare2(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Welfare w where w.ids=2");
		List<Welfare> list = query.getResultList();
		for(Welfare welfare:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Welfare> Welfare3(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Welfare w where w.ids=3");
		List<Welfare> list = query.getResultList();
		for(Welfare welfare:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Welfare> Welfare4(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Welfare w where w.ids=4");
		List<Welfare> list = query.getResultList();
		for(Welfare welfare:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public void addWelfare(ssh.entity.Welfare welfare) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(welfare);
	}

	
	
	
}
