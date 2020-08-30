package com.AllMobilize.dao.impl;

import com.AllMobilize.dao.BaseDao;
import com.AllMobilize.dao.UserInfoDao;
import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.User;
import com.AllMobilize.utils.Sha256;

import java.util.List;

public class UserInfoDaoImpl extends BaseDao implements UserInfoDao {
    Sha256 sha256 = new Sha256();
    @Override
    public User queryUserByUsername(String username) {
        String sql = "select * from user where username=?";
        return queryForOne(User.class,sql,username);
    }

    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        password = sha256.getSHA256(password);
        String sql = "select * from user where username = ? and password=?";
        return queryForOne(User.class,sql,username,password);
    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into user(`username`,`password`,`nickname`,`birthday`,`sex`,`email`) values(?,?,?,?,?,?)";
        return update(sql,user.getUsername(),sha256.getSHA256(user.getPassword()),user.getNickname(),user.getBirthday(),user.getSex(),user.getEmail());
    }

    @Override
    public Integer queryPageTotalCount() {
        String sql = "select count(*) from user";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<User> queryForPageItems(int begin, int pageSize) {
        String sql = "select * from user order by uid limit ?,?";
        return queryForList(User.class,sql,begin, pageSize);
    }


}
