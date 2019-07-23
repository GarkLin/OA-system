package ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import ssh.entity.Water;
public class WaterDaoImpl implements WaterDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<ssh.entity.Water> Water(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		System.out.println(id);
		Session session = sessionFactory.openSession();
		String sql = "from Water w where w.type_id=1";
		Query query = session.createQuery(sql);
		List<Water> list = query.getResultList();
		for(Water wt:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Water> Water2(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		String sql = "from Water w where w.type_id=2";
		Query query = session.createQuery(sql);
		List<Water> list = query.getResultList();
		for(Water wt:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Water> SumWater() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String sql = "select pay_money from Water w where w.type_id=1";
		Query query = session.createQuery(sql);
		List<Water> list = query.getResultList();
		return list;
	}

	@Override
	public List<ssh.entity.Water> SumWaters() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String sql = "select pay_money from Water w where w.type_id=2";
		Query query = session.createQuery(sql);
		List<Water> list = query.getResultList();
		return list;
	}

	@Override
	public void addWater(ssh.entity.Water water) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(water);
	}

	@Override
	public void addElectricity(ssh.entity.Water water) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(water);
	}

	@Override
	public Water findWater(String name, String address) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String sql ="from Water w where w.department_is=:name and w.source=:address";
		Query query = session.createQuery(sql);
		query.setParameter("name", name);
		query.setParameter("address", address);
		Water wresult = (ssh.entity.Water) query.uniqueResult();
		return wresult;
	}
}
