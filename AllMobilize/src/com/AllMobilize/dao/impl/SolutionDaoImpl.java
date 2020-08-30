package com.AllMobilize.dao.impl;

import com.AllMobilize.dao.BaseDao;
import com.AllMobilize.dao.SolutionDao;
import com.AllMobilize.pojo.Solution;

import java.util.List;

public class SolutionDaoImpl extends BaseDao implements SolutionDao {
    @Override
    public List<Solution> querySolutions() {
         String sql = "select * from solution ";
         return queryForList(Solution.class,sql);
    }

    @Override
    public int saveSolution(Solution solution) {
         String sql = "insert into solution(solutiontitle,solutiondesc,solutionpic,createtime,uid) values(?,?,?,?,?)";
         return update(sql,solution.getSolutiontitle(),solution.getSolutiondesc(),solution.getSolutionpic(),solution.getCreatetime(),solution.getUid());
    }

    @Override
    public int updateSolution(Solution solution) {
        String sql = "update solution set solutiontitle=?,solutiondesc=?,solutionpic=? where solutionid=?  ";
        return update(sql,solution.getSolutiontitle(),solution.getSolutiondesc(),solution.getSolutionpic(),solution.getSolutionid());

    }

    @Override
    public int deleteSolutionById(Integer id) {
        String sql = "delete  from  solution  where solutionid=?  ";
        return update(sql,id);
    }

    @Override
    public Solution getSolutionById(Integer id) {
        String sql = "select a.*,b.nickname from solution a,user b where a.uid=b.uid and  solutionid=?   ";
        return queryForOne(Solution.class,sql,id);
    }

    @Override
    public void updateSolutionClick(Integer id) {

    }


    @Override
    public Integer queryPageTotalCount(String title,String createtime) {
        String sql = "select count(*) from solution ";
        /**
         * 如果解决方案标题不为空
         */
        boolean flag = true;
        if (title != null && !"".equals(title)) {
            sql += " where solutiontitle='" + title + "'";
            if (createtime != null && !"".equals(createtime)) {
                sql += " and date(createtime) ='" + createtime + "'";
                flag = false;
            }
        }
        /**
         * 添加时间不为空
         */
        if (createtime != null && !"".equals(createtime)) {
            if (flag) {
                sql += " where date(createtime) ='" + createtime + "'";
            }
        }
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }


    @Override
    public List<Solution> queryForPageItems(int begin, int pageSize,String title ,String createtime) {

        String sql = "select a.*,b.nickname from solution a,user b where a.uid=b.uid ";

        /**
         * 如果解决方案标题不为空
         */
        if (title != null && !"".equals(title)) {
            sql += " and solutiontitle='" + title + "'";
        }
        /**
         * 添加时间不为空
         */
        if (createtime != null && !"".equals(createtime)) {
            sql += " and date(createtime) ='" + createtime + "'";
        }
        sql += " order by solutionid desc limit ?,?";
        //System.out.println("sql:"+sql);
        return queryForList(Solution.class,sql,begin,pageSize);
    }
}
