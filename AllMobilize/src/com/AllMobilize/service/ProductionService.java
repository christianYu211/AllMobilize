package com.AllMobilize.service;

import com.AllMobilize.pojo.Customcase;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Production;

public interface ProductionService {

    /**
     * 分页显示数据
     * @param pageNo
     * @param pageSize
     * @return
     */
    public Page<Production> page(int pageNo, int pageSize);

}
