package com.AllMobilize.dao.impl;

import com.AllMobilize.dao.BaseDao;
import com.AllMobilize.dao.ProductionDao;
import com.AllMobilize.pojo.Customcase;
import com.AllMobilize.pojo.Production;

import java.util.List;

public class ProductionDaoImpl extends BaseDao implements ProductionDao {

    @Override
    public Integer queryPageTotalCount() {
        String sql = "select count(*) from production ";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Production> queryForPageItems(int begin, int pageSize) {
        String sql = "select a.*,b.nickname from production a,user b where a.authorid=b.uid order by productid  limit ?,?";
        return queryForList(Production.class,sql,begin,pageSize);
    }
}
