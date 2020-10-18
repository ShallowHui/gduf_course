package edu.gduf.model.entity;

import java.util.List;

public class Course {
    private  String c_no;
    private  String c_name;
    private String ac_time;
    private  String c_comment;
    private  String t_no;
    private  String hc_time;
    private List<Student> students;

    @Override
    public String toString() {
        return "Course{" +
                "c_no='" + c_no + '\'' +
                ", c_name='" + c_name + '\'' +
                ", ac_time='" + ac_time + '\'' +
                ", c_comment='" + c_comment + '\'' +
                ", t_no='" + t_no + '\'' +
                ", hc_time='" + hc_time + '\'' +
                '}';
    }

    public String getC_no() {
        return c_no;
    }

    public void setC_no(String c_no) {
        this.c_no = c_no;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getAc_time() {
        return ac_time;
    }

    public void setAc_time(String ac_time) {
        this.ac_time = ac_time;
    }

    public String getC_comment() {
        return c_comment;
    }

    public void setC_comment(String c_comment) {
        this.c_comment = c_comment;
    }

    public String getT_no() {
        return t_no;
    }

    public void setT_no(String t_no) {
        this.t_no = t_no;
    }

    public String getHc_time() {
        return hc_time;
    }

    public void setHc_time(String hc_time) {
        this.hc_time = hc_time;
    }
}
