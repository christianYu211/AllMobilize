package com.AllMobilize.service.impl;

import com.AllMobilize.dao.BaseDao;
import com.AllMobilize.dao.UserInfoDao;
import com.AllMobilize.dao.impl.UserInfoDaoImpl;
import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.User;
import com.AllMobilize.service.UserService;

import java.util.List;

public class UserInfoServiceImpl extends BaseDao implements UserService {

   private UserInfoDao userInfoDao = new UserInfoDaoImpl();

    @Override
    public int regist(User user) {
       return userInfoDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userInfoDao.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {
       if (userInfoDao.queryUserByUsername(username) == null){
           return false;
       }
       return true;
    }

    @Override
    public Page<User> page(int pageNo, int pageSize) {
        Page<User> page = new Page<User>();

        //设置每页显示的数量
        page.setPageSize(pageSize);

        //求总记录数
        Integer pageTotalCount = userInfoDao.queryPageTotalCount();
        //设置总记录数
        page.setPageTotalCount(pageTotalCount);
        //求总页码
        Integer pageTotal = pageTotalCount / pageSize;
        if(pageTotalCount % pageSize > 0 ){
            pageTotal += 1;
        }
        page.setPageTotal(pageTotal);
        //数据便捷有效检查
        if (pageNo < 1){
            pageNo = 1;
        }
        if(pageNo > pageTotal){
            pageNo = pageTotal;
        }
        //设置当前页码
        page.setPageNo(pageNo);

        int begin = (page.getPageNo() - 1) * pageSize;
        List<User> items = userInfoDao.queryForPageItems(begin,pageSize);
        //设置当前页数据
        page.setItems(items);

        return page;
    }
}
