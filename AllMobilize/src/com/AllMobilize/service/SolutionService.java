package com.AllMobilize.service;

import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Solution;

public interface SolutionService {
    /**
     * 保存解决方案信息
     * @param solution
     */
    public void saveSolution(Solution solution);

    /**
     * 删除解决方案信息
     * @param id
     */
    public void deleteSolutionById(Integer id);

    /**
     * 更新解决方案信息
     * @param solution
     */
    public void updateSolution(Solution solution);

    /**
     * 通过ID查询解决方案
     * @param id
     */
    public Solution getSolutionById(Integer id);

    /**
     * 分页显示数据
     * @param pageNo
     * @param pageSize
     * @return
     */
    public Page<Solution> page(int pageNo, int pageSize,String title,String createtime);




}
