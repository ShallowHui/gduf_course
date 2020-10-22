package edu.gduf.model.entity;

import java.util.List;

public class PageCourse<Course> {
	  /**
     * 当前页面显示的数据
     */
    private List<Course> courses;

    /**
     * 1、当前第几页
     */
    private int currPage;
    /**
     * 2、每页显示几条记录
     */
    private int pageSize;

    /**
     * 3、总共有多少条记录
     */
    private int totalCount;

    /**
     * 总页数：这个不是基本属性，可以通过计算得出：totalCount/pageSize
     */
    private int totalPage;

    public List<Course> getCourses() {
        return courses;
    }

    public int getCurrPage() {
        return currPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }


    public PageCourse(){}

    public PageCourse(List<Course> courses, int currPage, int pageSize, int totalCount, int totalPage) {
        this.courses = courses;
        this.currPage = currPage;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.totalPage = totalPage;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "courses=" + courses +
                ", currPage=" + currPage +
                ", pageSize=" + pageSize +
                ", totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                '}';
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public void setCurrPage(int currPage) {
        this.currPage = currPage;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

}
