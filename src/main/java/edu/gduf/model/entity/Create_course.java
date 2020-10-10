package edu.gduf.model.entity;

import java.util.Date;

public class Create_course
{
	private String c_no;
	private String t_no;
	private Date cc_time;
	public String getC_no() {
		return c_no;
	}
	public void setC_no(String c_no) {
		this.c_no = c_no;
	}
	public String getT_no() {
		return t_no;
	}
	public void setT_no(String t_no) {
		this.t_no = t_no;
	}
	public Date getCc_time() {
		return cc_time;
	}
	public void setCc_time(Date cc_time) {
		this.cc_time = cc_time;
	}
}
