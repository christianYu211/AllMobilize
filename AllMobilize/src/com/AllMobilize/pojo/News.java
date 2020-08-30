package com.AllMobilize.pojo;

import java.util.Date;

public class News {

    private Integer newsid;

    private String newstitle;

    private String newsdesc;

    private Date releasetime;

    private Integer authorid;

    private String author;

    public News() {
    }

    public News(Integer newsid, String newstitle, String newsdesc, Date releasetime, Integer authorid, String author) {
        this.newsid = newsid;
        this.newstitle = newstitle;
        this.newsdesc = newsdesc;
        this.releasetime = releasetime;
        this.authorid = authorid;
        this.author = author;
    }

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getNewstitle() {
        return newstitle;
    }

    public void setNewstitle(String newstitle) {
        this.newstitle = newstitle;
    }

    public String getNewsdesc() {
        return newsdesc;
    }

    public void setNewsdesc(String newsdesc) {
        this.newsdesc = newsdesc;
    }

    public Date getReleasetime() {
        return releasetime;
    }

    public void setReleasetime(Date releasetime) {
        this.releasetime = releasetime;
    }

    public Integer getAuthorid() {
        return authorid;
    }

    public void setAuthorid(Integer authorid) {
        this.authorid = authorid;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "News{" +
                "newsid=" + newsid +
                ", newstitle='" + newstitle + '\'' +
                ", newsdesc='" + newsdesc + '\'' +
                ", releasetime=" + releasetime +
                ", authorid=" + authorid +
                ", author='" + author + '\'' +
                '}';
    }
}

