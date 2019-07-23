package ssh.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import ssh.entity.User;
import ssh.service.UserService;
import ssh.test.SessionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	private UserService userService;
	private User user;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	private int uid;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}
	//login页面
	public String loginHome(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = request.getParameter("username");
		String passsword = request.getParameter("password");
		System.out.println(username);
		System.out.println(passsword);
		List<User> users = userService.findUserByName(username);
		String result = "login";
		User us = new User();
		for(int i =0;i<users.size();i++){
			us = users.get(i);
			System.out.println(users.get(i));
			if(us.getUsername().equals(username)&&us.getPassword().equals(passsword)){
				SessionContext.setUser(us);
				result = "success";
			}
		}
		return result;
	}
	//注销
	public String logout(){
		//清空Session
		SessionContext.setUser(null);
		return "success";
	}
	//userHome页面
	public String userHome(){
		List<User> userList = userService.getUser();
		System.out.println("userList结果集："+userList.size());
		ActionContext ac = ActionContext.getContext();
		ac.put("userList", userList);
		return "success";
	}
	//获取user列表
	public String userList(){
		List<User> userList = userService.getUser();
		System.out.println("userList结果集："+userList.size());
		ActionContext ac = ActionContext.getContext();
		ac.put("userList", userList);
		return "success";
		
	}
	//修改用户信息
	public String userById(){
		System.out.println("userById1");
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		Long uid = Long.parseLong(id);
		System.out.println(id);
		User userById = (User)userService.findById(uid);
		setUser(userById);
		return "success";
	}
	//更新用户信息
	public String update(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		System.out.println("update1");
		userService.update(user);
		return "success";
	}
	//添加用户
	public String addUser(){
		System.out.println("addUserAction");
		userService.add(user);
		return "success";
	}
	//添加用户页面
	public String addUserPage(){
		System.out.println("跳转到添加用户页面");
		return "success";
	}
	//我的人事页面
	public String myPersonnel(){
		System.out.println("myPersonnel");
		return "success";
	}
	//财务管理
	public String finance(){
		System.out.println("财务管理");
		return "success";
	}
	//统计报表
	public String Reports(){
		System.out.println("统计报表");
		return "success";
	}
}
