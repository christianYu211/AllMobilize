package com.AllMobilize.service;

import com.AllMobilize.pojo.Customcase;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Solution;

public interface CustomcaseService {

    /**
     * 分页显示数据
     * @param pageNo
     * @param pageSize
     * @return
     */
    public Page<Customcase> page(int pageNo, int pageSize);


}
