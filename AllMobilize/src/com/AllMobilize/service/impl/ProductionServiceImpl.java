package com.AllMobilize.service.impl;

import com.AllMobilize.dao.ProductionDao;
import com.AllMobilize.dao.impl.ProductionDaoImpl;
import com.AllMobilize.pojo.Customcase;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Production;
import com.AllMobilize.service.ProductionService;

import java.util.List;

public class ProductionServiceImpl implements ProductionService {
    private ProductionDao productionDao = new ProductionDaoImpl();
    @Override
    public Page<Production> page(int pageNo, int pageSize) {
        Page<Production> page = new Page<Production>();

        //设置每页显示的数量
        page.setPageSize(pageSize);

        //求总记录数
        Integer pageTotalCount = productionDao.queryPageTotalCount();
        //设置总记录数
        page.setPageTotalCount(pageTotalCount);
        //求总页码
        Integer pageTotal = pageTotalCount / pageSize;
        if(pageTotalCount % pageSize > 0 ){
            pageTotal += 1;
        }
        page.setPageTotal(pageTotal);
        //数据便捷有效检查
        if (pageNo < 1){
            pageNo = 1;
        }
        if(pageNo > pageTotal){
            pageNo = pageTotal;
        }
        //设置当前页码
        page.setPageNo(pageNo);

        int begin = (page.getPageNo() - 1) * pageSize;
        System.out.println(begin+":"+pageSize);
        List<Production> items = productionDao.queryForPageItems(begin,pageSize);
        System.out.println(items);
        //设置当前页数据
        page.setItems(items);

        return page;
    }
}
