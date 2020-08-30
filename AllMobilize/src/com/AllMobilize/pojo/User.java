package com.AllMobilize.pojo;

import java.util.Date;

public class User {

    private Integer uid;

    private String username;

    private String password;

    private String nickname;

    private Date birthday;

    private String sex;

    private String email;

    private Integer status;

    private String code;

    public User() {
    }

    public User(Integer uid, String username, String password, String nickname, Date birthday, String sex, String email, Integer status, String code) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.nickname = nickname;
        this.birthday = birthday;
        this.sex = sex;
        this.email = email;
        this.status = status;
        this.code = code;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", nickname='" + nickname + '\'' +
                ", birthday=" + birthday +
                ", sex='" + sex + '\'' +
                ", email='" + email + '\'' +
                ", status=" + status +
                ", code='" + code + '\'' +
                '}';
    }
}
