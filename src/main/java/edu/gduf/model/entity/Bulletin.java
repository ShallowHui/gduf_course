package edu.gduf.model.entity;

import java.util.Date;



public class Bulletin 
{
	private Integer id;
	private String memo;
	private String BName;
	private Date creationtime;
	private String flag;
	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getBName() {
		return BName;
	}
	public void setBName(String bname) {
		BName = bname;
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
