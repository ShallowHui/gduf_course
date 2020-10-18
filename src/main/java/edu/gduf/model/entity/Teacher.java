package edu.gduf.model.entity;
//教师信息表
public class Teacher 
{
	private String t_no;
	private String t_password;
	private String t_name;
	private String t_office;
	private String t_phone;
	private String depart;
	public String getT_no() {
		return t_no;
	}
	public void setT_no(String t_no) {
		this.t_no = t_no;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getT_office() {
		return t_office;
	}
	public void setT_office(String t_office) {
		this.t_office = t_office;
	}
	public String getT_phone() {
		return t_phone;
	}
	public void setT_phone(String t_phone) {
		this.t_phone = t_phone;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
}
