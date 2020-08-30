package com.AllMobilize.dao;

import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.User;

import java.util.List;

public interface UserInfoDao {

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    public User queryUserByUsername(String username);

    /**
     * 根据用户名和密码查询用户
     * @param username
     * @param password
     * @return
     */
    public User queryUserByUsernameAndPassword(String username,String password);

    /**
     * 保存用户
     * @param user
     * @return
     */
    public int saveUser(User user);


    /**
     *查询管理员数量
     * @return
     */
    public Integer queryPageTotalCount();

    /**
     *通过分页查询
     * @param begin
     * @param pageSize
     */
    public List<User> queryForPageItems(int begin, int pageSize);

}
