package ssh.entity;

import java.util.Date;

public class Assessment {
	private int assessment_id;
	private int id;
	private String assessment_name;
	private String assessment_department;
	private String assessment_way;
	private String assessment_time;
	private String assessment_phone;
	private String assessment_date;
	private String assessment_adress;
	private String assessment_table;
	private String assessment_car;
	private int asta;
	public int getAsta() {
		return asta;
	}
	public void setAsta(int asta) {
		this.asta = asta;
	}
	public String getAssessment_date() {
		return assessment_date;
	}
	public void setAssessment_date(String assessment_date) {
		this.assessment_date = assessment_date;
	}
	public String getAssessment_adress() {
		return assessment_adress;
	}
	public void setAssessment_adress(String assessment_adress) {
		this.assessment_adress = assessment_adress;
	}
	public String getAssessment_table() {
		return assessment_table;
	}
	public void setAssessment_table(String assessment_table) {
		this.assessment_table = assessment_table;
	}
	public String getAssessment_car() {
		return assessment_car;
	}
	public void setAssessment_car(String assessment_car) {
		this.assessment_car = assessment_car;
	}
	public int getAssessment_id() {
		return assessment_id;
	}
	public void setAssessment_id(int assessment_id) {
		this.assessment_id = assessment_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAssessment_name() {
		return assessment_name;
	}
	public void setAssessment_name(String assessment_name) {
		this.assessment_name = assessment_name;
	}
	public String getAssessment_department() {
		return assessment_department;
	}
	public void setAssessment_department(String assessment_department) {
		this.assessment_department = assessment_department;
	}
	public String getAssessment_way() {
		return assessment_way;
	}
	public void setAssessment_way(String assessment_way) {
		this.assessment_way = assessment_way;
	}
	public String getAssessment_time() {
		return assessment_time;
	}
	public void setAssessment_time(String assessment_time) {
		this.assessment_time = assessment_time;
	}
	public String getAssessment_phone() {
		return assessment_phone;
	}
	public void setAssessment_phone(String assessment_phone) {
		this.assessment_phone = assessment_phone;
	}
}
