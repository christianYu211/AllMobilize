package com.AllMobilize.dao;

import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.Solution;

import java.util.List;

public interface AdminDao {
    /**
     * 根据管理员用户名查询管理员信息
     * @param username
     * @return
     */
    public Admin queryAdminByAdminname(String username);

    /**
     * 根据管理员用户名和密码查询管理员
     * @param username
     * @param password
     * @return
     */
    public Admin queryAdminByAdminnameAndPassword(String username,String password);

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
    public List<Admin> queryForPageItems(int begin, int pageSize);


}
