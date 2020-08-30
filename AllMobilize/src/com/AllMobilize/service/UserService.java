package com.AllMobilize.service;

import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.User;

public interface UserService {

    /**
     *
     * @param user
     */
    public int regist(User user);

    public User login(User user);

    public boolean existsUsername(String username);

    /**
     * 分页显示数据
     * @param pageNo
     * @param pageSize
     * @return
     */
    public Page<User> page(int pageNo, int pageSize);
}
