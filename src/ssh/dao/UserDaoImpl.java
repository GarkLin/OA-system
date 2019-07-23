package ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import ssh.entity.User;
public class UserDaoImpl implements UserDao{
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//用户列表
	@Override
	public List<User> getUser() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User");
		List<User> userList = query.getResultList();		
		for(User user: userList){
			System.out.println("user");
		}
		return userList;
	}
	//用户修改
	@Override
	public User findById(Long uid){
		User result = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			//事务，失败了可以回滚不印象数据库数据
			Transaction tx = session.beginTransaction();
			String hsql="from User u where u.uid=:uid";
			Query query = session.createQuery(hsql);
			query.setParameter("uid", uid);
			result = (User)query.uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			 e.printStackTrace();
		}finally{
			session.close();
		}
//		session = sessionFactory.openSession();
//		System.out.println("返回id："+uid);
//		String hsql="from User u where u.uid=:uid";
//		Query query = session.createQuery(hsql);
//		query.setParameter("uid", uid);
//		System.out.println("userById3");
//		result = (User)query.uniqueResult();
//		session.close();
//		sessionFactory.close();
		return result;
	}
	//用户更新
	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		Session session = null;
		try {
			session =sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.update(user);
			tx.commit();
			session.close();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	//用户添加
	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.openSession();
		session.save(user);
		
	}
	//用户删除
	@Override
	public void delete(Long uid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		User user = session.get(User.class, uid);
		session.delete(user);
		
	}
	@Override
	public List<User> findUserByName(String username) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hsql="from User t where t.username=:username";
		Query query = session.createQuery(hsql);
		query.setParameter("username", username);
		System.out.println(hsql);
		List<User> us = query.getResultList();
		return us;
	}
	
	
}
