package ssh.dao;

import java.util.List;

import ssh.entity.User;

public interface UserDao {
	public List<User> getUser();
	public User findById(Long uid);
	public void update(User user);
	public void add(User user);
	public void delete(Long uid);
	public List<User> findUserByName(String username);
}
