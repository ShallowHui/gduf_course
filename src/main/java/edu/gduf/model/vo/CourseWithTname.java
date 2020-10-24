package edu.gduf.model.vo;

import edu.gduf.model.entity.Course;

public class CourseWithTname {
    private String t_name;
    private Course course;

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
}

