package com.AllMobilize.pojo;

public class Admin {
    //管理员id
    private Integer adminid;
    //管理员用户名
    private String username;
    //管理员密码
    private String password;
    //管理员姓名
    private String nickname;

    public Admin() {
    }

    public Admin(Integer adminid, String username, String password, String nickname) {
        this.adminid = adminid;
        this.username = username;
        this.password = password;
        this.nickname = nickname;
    }

    public Integer getAdminid() {
        return adminid;
    }

    public void setAdminid(Integer adminid) {
        this.adminid = adminid;
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

    @Override
    public String toString() {
        return "admin{" +
                "adminid=" + adminid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", nickname='" + nickname + '\'' +
                '}';
    }
}
