package ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ssh.dao.UserDao;
import ssh.entity.User;
public class UserServiceImpl implements UserService{
	private UserDao userDao;
	
	//用户列表
	@Override
	public List<User> getUser() {
		// TODO Auto-generated method stub
		List<User> userList = userDao.getUser();
		return userList;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	//用户修改
	@Override
	public User findById(Long uid){
		System.out.println("userById12");
		System.out.println("Service中的id："+uid);
//		User user = (User) ud.findById(uid);
		return userDao.findById(uid);
	}
	//用户添加
	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		if(userDao.findById(user.getUid())==null){
			userDao.add(user);
		}
		
	}
	//用户更新
	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		System.out.println("update2");
		System.out.println("更新id=");
		if(userDao.findById(user.getUid())!=null){
			userDao.update(user);
		}
		else{
			System.out.println("无法更新");
		}
		
	}
	//用户删除
	@Override
	public void delete(Long uid) {
		// TODO Auto-generated method stub
		if(userDao.findById(uid)!=null){
			userDao.delete(uid);
		}
		
	}
	@Override
	public List<User> findUserByName(String username) {
		// TODO Auto-generated method stub
		return userDao.findUserByName(username);
	}

	
}
