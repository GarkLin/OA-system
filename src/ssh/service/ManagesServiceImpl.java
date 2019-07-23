package ssh.service;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ssh.dao.ManagesDao;
public class ManagesServiceImpl implements ManagesService{

	private ManagesDao managesDao;
	public void setManagesDao(ManagesDao managesDao) {
		this.managesDao = managesDao;
	}
	
}
