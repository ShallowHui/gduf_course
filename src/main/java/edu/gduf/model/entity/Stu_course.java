package edu.gduf.model.entity;

import java.util.List;

public class Stu_course
{
	private Integer scid;
	private String s_no;
	private String c_no;
	private List<Student> students;

	public Stu_course(){}
	public Integer getScid() {
		return scid;
	}

	public void setScid(Integer scid) {
		this.scid = scid;
	}

	public String getS_no() {
		return s_no;
	}

	public void setS_no(String s_no) {
		this.s_no = s_no;
	}

	public String getC_no() {
		return c_no;
	}

	public void setC_no(String c_no) {
		this.c_no = c_no;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	public Stu_course(Integer scid, String s_no, String c_no, List<Student> students) {
		this.scid = scid;
		this.s_no = s_no;
		this.c_no = c_no;
		this.students = students;
	}

	@Override
	public String toString() {
		return "Stu_course{" +
				"scid=" + scid +
				", s_no='" + s_no + '\'' +
				", c_no='" + c_no + '\'' +
				", students=" + students +
				'}';
	}
}
