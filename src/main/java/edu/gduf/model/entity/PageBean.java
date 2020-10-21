package edu.gduf.model.entity;

import java.util.List;

public class PageBean<Student> {
    /**
     * 当前页面显示的数据
     */
    private List<Student> students;

    /**
     * 1、当前第几页
     */
    private int currPage = 1;
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

    public List<Student> getStudents() {
        return students;
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

    public PageBean(){}

    public PageBean(List<Student> students, int currPage, int pageSize, int totalCount, int totalPage) {
        this.students = students;
        this.currPage = currPage;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.totalPage = totalPage;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "students=" + students +
                ", currPage=" + currPage +
                ", pageSize=" + pageSize +
                ", totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                '}';
    }

    public void setStudents(List<Student> students) {
        this.students = students;
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
