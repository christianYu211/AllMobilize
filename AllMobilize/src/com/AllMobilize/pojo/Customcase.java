package com.AllMobilize.pojo;

import java.util.Date;

public class Customcase {
    private Integer customcaseid;

    private String customcasetitle;

    private String customcasedesc;

    private String customcasepic;

    private Date createtime;

    private Integer uid;

    private String nickname;

    public Customcase() {
    }

    public Customcase(Integer customcaseid, String customcasetitle, String customcasedesc, String customcasepic, Date createtime, Integer uid, String nickname) {
        this.customcaseid = customcaseid;
        this.customcasetitle = customcasetitle;
        this.customcasedesc = customcasedesc;
        this.customcasepic = customcasepic;
        this.createtime = createtime;
        this.uid = uid;
        this.nickname = nickname;
    }

    public Integer getCustomcaseid() {
        return customcaseid;
    }

    public void setCustomcaseid(Integer customcaseid) {
        this.customcaseid = customcaseid;
    }

    public String getCustomcasetitle() {
        return customcasetitle;
    }

    public void setCustomcasetitle(String customcasetitle) {
        this.customcasetitle = customcasetitle;
    }

    public String getCustomcasedesc() {
        return customcasedesc;
    }

    public void setCustomcasedesc(String customcasedesc) {
        this.customcasedesc = customcasedesc;
    }

    public String getCustomcasepic() {
        return customcasepic;
    }

    public void setCustomcasepic(String customcasepic) {
        this.customcasepic = customcasepic;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    @Override
    public String toString() {
        return "Customcase{" +
                "customcaseid=" + customcaseid +
                ", customcasetitle='" + customcasetitle + '\'' +
                ", customcasedesc='" + customcasedesc + '\'' +
                ", customcasepic='" + customcasepic + '\'' +
                ", createtime=" + createtime +
                ", uid=" + uid +
                ", nickname='" + nickname + '\'' +
                '}';
    }
}
