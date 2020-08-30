package com.AllMobilize.dao.impl;

import com.AllMobilize.dao.AdminDao;
import com.AllMobilize.dao.BaseDao;
import com.AllMobilize.pojo.Admin;
import com.AllMobilize.utils.Sha256;

import java.util.List;

public class AdminDaoImpl extends BaseDao implements AdminDao {
    Sha256 sha256 = new Sha256();
    @Override
    public Admin queryAdminByAdminname(String username) {
        String sql = "select * from admin where username=?";
        return queryForOne(Admin.class,sql,username);
    }

    @Override
    public Admin queryAdminByAdminnameAndPassword(String username, String password) {
        String sql = "select * from admin where username=? and password=?";

        return queryForOne(Admin.class,sql,username,password);
    }

    @Override
    public Integer queryPageTotalCount() {
        String sql = "select count(*) from admin";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Admin> queryForPageItems(int begin, int pageSize) {
        String sql = "select * from admin order by adminid limit ?,?";
        return queryForList(Admin.class,sql,begin, pageSize);
    }
}
