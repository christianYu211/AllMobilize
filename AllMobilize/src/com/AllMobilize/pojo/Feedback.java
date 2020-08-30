package com.AllMobilize.pojo;

import java.util.Date;

public class Feedback {

    private Integer feedbackid ;

    private String feedbacktitle;

    private String feedbackdesc;

    private Date messagetime;

    private Integer uid;

    private String nickname;

    public Feedback() {
    }

    public Feedback(Integer feedbackid, String feedbacktitle, String feedbackdesc, Date messagetime, Integer uid, String nickname) {
        this.feedbackid = feedbackid;
        this.feedbacktitle = feedbacktitle;
        this.feedbackdesc = feedbackdesc;
        this.messagetime = messagetime;
        this.uid = uid;
        this.nickname = nickname;
    }

    public Integer getFeedbackid() {
        return feedbackid;
    }

    public void setFeedbackid(Integer feedbackid) {
        this.feedbackid = feedbackid;
    }

    public String getFeedbacktitle() {
        return feedbacktitle;
    }

    public void setFeedbacktitle(String feedbacktitle) {
        this.feedbacktitle = feedbacktitle;
    }

    public String getFeedbackdesc() {
        return feedbackdesc;
    }

    public void setFeedbackdesc(String feedbackdesc) {
        this.feedbackdesc = feedbackdesc;
    }

    public Date getMessagetime() {
        return messagetime;
    }

    public void setMessagetime(Date messagetime) {
        this.messagetime = messagetime;
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
        return "Feedback{" +
                "feedbackid=" + feedbackid +
                ", feedbacktitle='" + feedbacktitle + '\'' +
                ", feedbackdesc='" + feedbackdesc + '\'' +
                ", messagetime=" + messagetime +
                ", uid=" + uid +
                ", nickname='" + nickname + '\'' +
                '}';
    }
}
