package com.AllMobilize.service;

import com.AllMobilize.pojo.News;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Production;

public interface NewsService {


    /**
     * 分页显示数据
     * @param pageNo
     * @param pageSize
     * @return
     */
    public Page<News> page(int pageNo, int pageSize);
}
