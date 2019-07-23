package ssh.action;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import ssh.service.ManagesService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ManagesAction extends ActionSupport{
	/**
	 * 
	 */
	private ManagesService managesService;

	public void setManagesService(ManagesService managesService) {
		this.managesService = managesService;
	}
	private String user_number;
	private String user_password;
	public String getUser_number() {
		return user_number;
	}
	public void setUser_number(String user_number) {
		this.user_number = user_number;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
}
