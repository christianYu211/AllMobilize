package com.AllMobilize.service.impl;

import com.AllMobilize.dao.AdminDao;
import com.AllMobilize.dao.impl.AdminDaoImpl;
import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Solution;
import com.AllMobilize.service.AdminService;

import java.util.List;

public class AdminServiceImpl implements AdminService {
    private AdminDao adminDao = new AdminDaoImpl();
    @Override
    public Admin login(String username, String password) {
        return adminDao.queryAdminByAdminnameAndPassword(username,password);
    }

    @Override
    public boolean existsAdmin(String username) {
        if (adminDao.queryAdminByAdminname(username) == null){
            return false;
        }
        return true;
    }

    @Override
    public Page<Admin> page(int pageNo, int pageSize) {
        Page<Admin> page = new Page<Admin>();

        //设置每页显示的数量
        page.setPageSize(pageSize);

        //求总记录数
        Integer pageTotalCount = adminDao.queryPageTotalCount();
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
        List<Admin> items = adminDao.queryForPageItems(begin,pageSize);
        //设置当前页数据
        page.setItems(items);

        return page;
    }
}
