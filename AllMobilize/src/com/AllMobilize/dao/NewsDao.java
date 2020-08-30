package com.AllMobilize.dao;

import com.AllMobilize.pojo.News;
import com.AllMobilize.pojo.Production;

import java.util.List;

public interface NewsDao {

    /**
     *查询数量
     * @return
     */
    public Integer queryPageTotalCount();


    /**
     *通过分页查询
     * @param begin
     * @param pageSize
     */
    public List<News> queryForPageItems(int begin, int pageSize);

}
