package ssh.entity;

import java.util.Date;

public class Welfare {
	private int id;
	private String ids;
	private String name;
	private String type;
	private String date;
	private String time;
	private String welfare_way;
	private String welfare_people;
	private String welfare_money;
	private String effective;
	private String endtime;
	public String getEffective() {
		return effective;
	}
	public void setEffective(String effective) {
		this.effective = effective;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getWelfare_way() {
		return welfare_way;
	}
	public void setWelfare_way(String welfare_way) {
		this.welfare_way = welfare_way;
	}
	public String getWelfare_people() {
		return welfare_people;
	}
	public void setWelfare_people(String welfare_people) {
		this.welfare_people = welfare_people;
	}
	public String getWelfare_money() {
		return welfare_money;
	}
	public void setWelfare_money(String welfare_money) {
		this.welfare_money = welfare_money;
	}
	
}
