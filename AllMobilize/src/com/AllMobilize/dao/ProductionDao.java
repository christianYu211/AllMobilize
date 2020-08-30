package com.AllMobilize.dao;

import com.AllMobilize.pojo.Customcase;
import com.AllMobilize.pojo.Production;

import java.util.List;

public interface ProductionDao {


    /**
     *查询产品例数量
     * @return
     */
    public Integer queryPageTotalCount();


    /**
     *通过分页查询
     * @param begin
     * @param pageSize
     */
    public List<Production> queryForPageItems(int begin, int pageSize);

}
