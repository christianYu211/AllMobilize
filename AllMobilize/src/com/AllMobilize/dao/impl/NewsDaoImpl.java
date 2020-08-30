package com.AllMobilize.dao.impl;

import com.AllMobilize.dao.BaseDao;
import com.AllMobilize.dao.NewsDao;
import com.AllMobilize.pojo.News;
import com.AllMobilize.pojo.Production;

import java.util.List;

public class NewsDaoImpl extends BaseDao implements NewsDao {
    @Override
    public Integer queryPageTotalCount() {
        String sql = "select count(*) from news ";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<News> queryForPageItems(int begin, int pageSize) {
        String sql = "select a.*,b.nickname from news a,user b where a.authorsid=b.uid order by newsid  limit ?,?";
        return queryForList(News.class,sql,begin,pageSize);
    }
}
