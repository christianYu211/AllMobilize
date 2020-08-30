package com.AllMobilize.pojo;

import java.util.Date;

public class Production {
    private Integer productid;

    private String productname;

    private String productdesc;

    private String productpic;

    private Double productprice;

    private Double productsize;

    private Date uploadtime;

    private String producttype;

    private Integer downloadtimes;

    private Integer authorid;

    private String author;


    public Production() {
    }

    public Production(Integer productid, String productname, String productdesc, String productpic, Double productprice, Double productsize, Date uploadtime, String producttype, Integer downloadtimes, Integer authorid, String author) {
        this.productid = productid;
        this.productname = productname;
        this.productdesc = productdesc;
        this.productpic = productpic;
        this.productprice = productprice;
        this.productsize = productsize;
        this.uploadtime = uploadtime;
        this.producttype = producttype;
        this.downloadtimes = downloadtimes;
        this.authorid = authorid;
        this.author = author;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProductdesc() {
        return productdesc;
    }

    public void setProductdesc(String productdesc) {
        this.productdesc = productdesc;
    }

    public String getProductpic() {
        return productpic;
    }

    public void setProductpic(String productpic) {
        this.productpic = productpic;
    }

    public Double getProductprice() {
        return productprice;
    }

    public void setProductprice(Double productprice) {
        this.productprice = productprice;
    }

    public Double getProductsize() {
        return productsize;
    }

    public void setProductsize(Double productsize) {
        this.productsize = productsize;
    }

    public Date getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(Date uploadtime) {
        this.uploadtime = uploadtime;
    }

    public String getProducttype() {
        return producttype;
    }

    public void setProducttype(String producttype) {
        this.producttype = producttype;
    }

    public Integer getDownloadtimes() {
        return downloadtimes;
    }

    public void setDownloadtimes(Integer downloadtimes) {
        this.downloadtimes = downloadtimes;
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
                "productid=" + productid +
                ", productname='" + productname + '\'' +
                ", productdesc='" + productdesc + '\'' +
                ", productpic='" + productpic + '\'' +
                ", productprice=" + productprice +
                ", productsize=" + productsize +
                ", uploadtime=" + uploadtime +
                ", producttype='" + producttype + '\'' +
                ", downloadtimes=" + downloadtimes +
                ", authorid=" + authorid +
                ", author='" + author + '\'' +
                '}';
    }
}
