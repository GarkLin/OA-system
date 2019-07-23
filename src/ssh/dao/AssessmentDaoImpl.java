package ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ssh.entity.Assessment;
import ssh.entity.User;
public class AssessmentDaoImpl implements AssessmentDao{
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public List<Assessment> Assessment(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Assessment a where a.id=1");
		List<Assessment> list = query.getResultList();
		for(Assessment assessment:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<Assessment> Assessment2(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Assessment a where a.id=2");
		List<Assessment> list = query.getResultList();
		for(Assessment assessment:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<Assessment> Assessment3(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Assessment a where a.id=3");
		List<Assessment> list = query.getResultList();
		for(Assessment assessment:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<Assessment> Assessment4(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Assessment a where a.id=4");
		List<Assessment> list = query.getResultList();
		for(Assessment assessment:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<Assessment> Assessment5(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Assessment a where a.id=5");
		List<Assessment> list = query.getResultList();
		for(Assessment assessment:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Assessment> Assessment6(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Assessment a where a.id=6");
		List<Assessment> list = query.getResultList();
		for(Assessment assessment:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public void add(Assessment assessment) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.openSession();
		session.save(assessment);
		
	}

	@Override
	public List<ssh.entity.Assessment> findId() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hsql = "from Assessment a where a.id=0";
		Query query =session.createQuery(hsql);
		List<Assessment> list = query.getResultList();
		return list;
	}
	//显示在修改页面
	@Override
	public ssh.entity.Assessment findById(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.openSession();
		String hsql = "from Assessment a where a.assessment_id=:id";
		Query query = session.createQuery(hsql);
		query.setParameter("id", id);
		Assessment alist = (ssh.entity.Assessment) query.uniqueResult();
		return alist;
	}
	//删除
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Assessment assessment = session.get(Assessment.class, id);
		session.delete(assessment);
		tx.commit();
	}
	//更新数据
	@Override
	public void update(Assessment assessment) {
		// TODO Auto-generated method stub
		Session session = null;
		try {
			session =sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.update(assessment);
			tx.commit();
			session.close();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
}
