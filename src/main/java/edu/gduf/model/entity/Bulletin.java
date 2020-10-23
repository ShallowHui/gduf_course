package edu.gduf.model.entity;

import java.util.Date;



public class Bulletin 
{
	private Integer id;
	private String memo;
	private String Bname;
	private Date creationtime;
	private String flag;
	public String getBname() {
		return Bname;
	}
	public void setBname(String bname) {
		Bname = bname;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getFlag()
	{
		return flag;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return memo;
	}
	public void setContent(String content) {
		this.memo = content;
	}
	public Date getTime() {
		return creationtime;
	}
	public void setTime(Date time) {
		this.creationtime = time;
	}

}
