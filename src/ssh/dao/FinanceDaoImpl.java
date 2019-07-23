package ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import ssh.entity.Finance;
import ssh.entity.Water;
public class FinanceDaoImpl implements FinanceDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<ssh.entity.Finance> Finance(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Finance f where f.fid=1");
		List<Finance> list = query.getResultList();
		for(Finance finance:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Finance> Finance2(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Finance f where f.fid=2");
		List<Finance> list = query.getResultList();
		for(Finance finance:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Finance> Finance3(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Finance f where f.fid=3");
		List<Finance> list = query.getResultList();
		for(Finance finance:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Finance> Finance4(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Finance f where f.fid=4");
		List<Finance> list = query.getResultList();
		for(Finance finance:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Finance> Finance5(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Finance f where f.fid=5");
		List<Finance> list = query.getResultList();
		for(Finance finance:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Finance> Finance6(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Finance f where f.fid=6");
		List<Finance> list = query.getResultList();
		for(Finance finance:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<Water> Finance7(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Water w where w.type_id=1 or w.type_id=2");
		List<Water> list = query.getResultList();
		for(Water water:list){
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<ssh.entity.Finance> Finance8(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+id);
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Finance");
		List<Finance> list = query.getResultList();
		for(Finance finance:list){
			System.out.println(list);
		}
		return list;
	}
	//添加finance信息
	@Override
	public void addFinancepage(ssh.entity.Finance finance) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(finance);
	}
	//资金查询
	@Override
	public ssh.entity.Finance findFinance(String name, String type) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String sql ="from Finance f where f.finance_name=:name and f.finance_type=:type";
		Query query = session.createQuery(sql);
		query.setParameter("name", name);
		query.setParameter("type", type);
		Finance fresult = (ssh.entity.Finance) query.uniqueResult();
		return fresult;
	}
}
