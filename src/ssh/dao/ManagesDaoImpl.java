package ssh.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

public class ManagesDaoImpl implements ManagesDao{
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
}
