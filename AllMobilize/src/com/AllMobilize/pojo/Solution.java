package com.AllMobilize.pojo;

import java.util.Date;

public class Solution {
    /**
     * 解决方案编号
     */
    private Integer solutionid;
    /**
     * 解决方案标题
     */
    private String solutiontitle;
    /**
     * 解决方案描述
     */
    private String solutiondesc;
    /**
     * 解决方案图片
     */
    private String solutionpic;
    /**
     * 解决方案创建时间
     */
    private Date createtime;
    /**
     * 用户编号
     */
    private Integer uid;
    /**
     * 发布人
     */
    private String nickname;

    public Solution() {
    }



    public Integer getSolutionid() {
        return solutionid;
    }

    public void setSolutionid(Integer solutionid) {
        this.solutionid = solutionid;
    }

    public String getSolutiontitle() {
        return solutiontitle;
    }

    public void setSolutiontitle(String solutiontitle) {
        this.solutiontitle = solutiontitle;
    }

    public String getSolutiondesc() {
        return solutiondesc;
    }

    public void setSolutiondesc(String solutiondesc) {
        this.solutiondesc = solutiondesc;
    }

    public String getSolutionpic() {
        return solutionpic;
    }

    public void setSolutionpic(String solutionpic) {
        this.solutionpic = solutionpic;
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
        return "Solution{" +
                "solutioid=" + solutionid +
                ", solutiontitle='" + solutiontitle + '\'' +
                ", solutiondesc='" + solutiondesc + '\'' +
                ", solutionpic='" + solutionpic + '\'' +
                ", createtime=" + createtime +
                ", uid=" + uid +
                ", nickname='" + nickname + '\'' +
                '}';
    }
}

