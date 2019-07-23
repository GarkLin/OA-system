package ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.junit.Test;
import org.springframework.stereotype.Repository;

import ssh.entity.Assessment;
import ssh.entity.Recritment;
public class RecritmentDaoImpl implements RecritmentDao{
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	//获取招聘列表
	@Override
	public List<Recritment> RecritmentList(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Recritment r where r.id=0");
		List<Recritment> list = query.getResultList();
		for(Recritment recritment:list){
			System.out.println(list);
		}
		return list;
	}
	
	//获取招聘列表
		@Override
		public List<Recritment> RecritmentList1(int id) {
			// TODO Auto-generated method stub
			System.out.println("dao:"+id);
			Session session = sessionFactory.openSession();
			Query query = session.createQuery("from Recritment r where r.id=1");
			List<Recritment> list = query.getResultList();
			for(Recritment recritment:list){
				System.out.println(list);
			}
			return list;
		}
		//获取招聘列表
		@Override
		public List<Recritment> RecritmentList2(int id) {
			// TODO Auto-generated method stub
			System.out.println("dao:"+id);
			Session session = sessionFactory.openSession();
			Query query = session.createQuery("from Recritment r where r.id=2");
			List<Recritment> list = query.getResultList();
			for(Recritment recritment:list){
				System.out.println(list);
			}
			return list;
		}
		//获取招聘列表
		@Override
		public List<Recritment> RecritmentList3(int id) {
			// TODO Auto-generated method stub
			System.out.println("dao:"+id);
			Session session = sessionFactory.openSession();
			Query query = session.createQuery("from Recritment r where r.id=3");
			List<Recritment> list = query.getResultList();
			for(Recritment recritment:list){
				System.out.println(list);
			}
			return list;
		}
		//获取招聘列表
		@Override
		public List<Recritment> RecritmentList4(int id) {
			// TODO Auto-generated method stub
			System.out.println("dao:"+id);
			Session session = sessionFactory.openSession();
			Query query = session.createQuery("from Recritment r where r.id=4");
			List<Recritment> list = query.getResultList();
			for(Recritment recritment:list){
				System.out.println(list);
			}
			return list;
		}
		//招聘表单
		@Override
		public void add(Recritment recritment) {
			// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
			session.save(recritment);
		}
		//	获取待处理的招聘
		@Override
		public List<Recritment> findSta() {
			// TODO Auto-generated method stub
			String hsql = "from Recritment r where r.sta=0 or r.sta=1";
			Session session = sessionFactory.openSession();
			Query query = session.createQuery(hsql);
			List<Recritment> list = query.getResultList();
			for(Recritment recritment:list){
				System.out.println(list);
			}
			return list;
		}

		@Override
		public Recritment findById(Long id) {
			// TODO Auto-generated method stub
			int ids = id.intValue();
			System.out.println(ids);
			String hsql ="from Recritment r where r.recritment_id=:ids";
			Session session = sessionFactory.openSession();
			Query query = session.createQuery(hsql);
			query.setParameter("ids", ids);
			System.out.println(hsql);
			Recritment rList = (Recritment) query.uniqueResult();
			return rList;
		}

		@Override
		public void updateSta(Recritment recritment) {
			// TODO Auto-generated method stub
			Session session = null;
			try {
				session =sessionFactory.openSession();
				Transaction tx = session.beginTransaction();
				session.update(recritment);
				tx.commit();
				session.close();
			} catch (HibernateException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		@Override
		public void update(Recritment recritment) {
			// TODO Auto-generated method stub
			Session session = null;
			try {
				session =sessionFactory.openSession();
				Transaction tx = session.beginTransaction();
				session.update(recritment);
				tx.commit();
				session.close();
			} catch (HibernateException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		@Override
		public void delete(int id) {
			// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			Recritment recritment = session.get(Recritment.class, id);
			session.delete(recritment);
			tx.commit();
		}
}
