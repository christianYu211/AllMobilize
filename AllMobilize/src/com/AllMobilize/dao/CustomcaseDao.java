package com.AllMobilize.dao;

import com.AllMobilize.pojo.Customcase;
import com.AllMobilize.pojo.Solution;

import java.util.List;

public interface CustomcaseDao {


    /**
     *查询客户案例数量
     * @return
     */
    public Integer queryPageTotalCount();


    /**
     *通过分页查询
     * @param begin
     * @param pageSize
     */
    public List<Customcase> queryForPageItems(int begin, int pageSize);

}
