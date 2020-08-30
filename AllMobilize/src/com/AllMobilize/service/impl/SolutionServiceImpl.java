package com.AllMobilize.service.impl;

import com.AllMobilize.dao.SolutionDao;
import com.AllMobilize.dao.impl.SolutionDaoImpl;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Solution;
import com.AllMobilize.service.SolutionService;

import java.util.List;

public class SolutionServiceImpl implements SolutionService {
    private SolutionDao solutionDao = new SolutionDaoImpl();
    @Override
    public void saveSolution(Solution solution) {
        solutionDao.saveSolution(solution);
    }

    @Override
    public void deleteSolutionById(Integer id) {
        solutionDao.deleteSolutionById(id);
    }

    @Override
    public void updateSolution(Solution solution) {
        solutionDao.updateSolution(solution);
    }

    @Override
    public Solution getSolutionById(Integer id) {
       return solutionDao.getSolutionById(id);
    }

    @Override
    public Page<Solution> page(int pageNo, int pageSize,String title,String createtime) {
        Page<Solution> page = new Page<Solution>();

        //设置每页显示的数量
        page.setPageSize(pageSize);

        //求总记录数
        Integer pageTotalCount = solutionDao.queryPageTotalCount(title,createtime);
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
//        System.out.println(title+":"+createtime);
//        System.out.println(pageNo+":"+pageSize+":"+pageTotal+":"+pageTotalCount);

        List<Solution> items = solutionDao.queryForPageItems(begin,pageSize,title,createtime);
        //设置当前页数据
        page.setItems(items);

        return page;
    }


}
