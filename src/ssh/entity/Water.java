package ssh.entity;

import java.util.Date;

public class Water {
	private int water_id;
	private String pay_date;
	private String pay_money;
	private String type;
	private int type_id;
	private String department;
	private String department_is;
	private String source;
	private String water_user;
	private String phone;
	private String beizhu;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public int getWater_id() {
		return water_id;
	}
	public String getWater_user() {
		return water_user;
	}
	public void setWater_user(String water_user) {
		this.water_user = water_user;
	}
	public void setWater_id(int water_id) {
		this.water_id = water_id;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getPay_money() {
		return pay_money;
	}
	public void setPay_money(String pay_money) {
		this.pay_money = pay_money;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDepartment_is() {
		return department_is;
	}
	public void setDepartment_is(String department_is) {
		this.department_is = department_is;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
}
