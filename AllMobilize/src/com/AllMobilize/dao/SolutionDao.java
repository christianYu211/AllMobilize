package com.AllMobilize.dao;

import com.AllMobilize.pojo.Solution;

import java.net.InterfaceAddress;
import java.util.List;

public interface SolutionDao {
    /**
     * 显示所有解决方案信息
     * @return
     */
    public List<Solution> querySolutions();

    /**
     * 保存解决方案信息
     * @param solution
     * @return
     */
    public int saveSolution(Solution solution);

    /**
     * 保存解决方案信息
     * @param solution
     * @return
     */
    public int updateSolution(Solution solution);

    /**
     *删除解决方案信息
     * @param id
     * @return
     */
    public int deleteSolutionById(Integer id);

    /**
     *通过ID得到解决方案
     * @param id
     */
    public Solution getSolutionById(Integer id);

    /**
     *更新解决方案点击次数
     * @param id
     */
    public void updateSolutionClick(Integer id);

    /**
     *查询解决方案数量
     * @return
     */
    public Integer queryPageTotalCount(String title,String createtime);



    /**
     *通过分页查询
     * @param begin
     * @param pageSize
     */
    public List<Solution> queryForPageItems(int begin,int pageSize,String title,String createtime);


}
