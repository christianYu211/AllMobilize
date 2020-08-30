package com.AllMobilize.service;

import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Solution;

public interface AdminService {
    /**
     * 登录
     * @param username
     * @param password
     */
    public Admin login(String username, String password);

    /**
     * 检查是否存在该管理员用户
     * @param username
     * @return
     */
    public boolean existsAdmin(String username);

    /**
     * 分页显示数据
     * @param pageNo
     * @param pageSize
     * @return
     */
    public Page<Admin> page(int pageNo, int pageSize);



}
