package com.AllMobilize.dao.impl;

import com.AllMobilize.dao.BaseDao;
import com.AllMobilize.dao.CustomcaseDao;
import com.AllMobilize.pojo.Customcase;
import com.AllMobilize.pojo.Solution;

import java.util.List;


public class CustomcaseDaoImpl extends BaseDao implements CustomcaseDao  {

    @Override
    public Integer queryPageTotalCount() {
        String sql = "select count(*) from customcase ";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Customcase> queryForPageItems(int begin, int pageSize) {
        String sql = "select a.*,b.nickname from customcase a,user b where a.uid=b.uid order by customcaseid  limit ?,?";
        return queryForList(Customcase.class,sql,begin,pageSize);
    }
}
