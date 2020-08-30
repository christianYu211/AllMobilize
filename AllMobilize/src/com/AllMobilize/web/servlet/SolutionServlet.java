package com.AllMobilize.web.servlet;

import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Solution;
import com.AllMobilize.service.SolutionService;
import com.AllMobilize.service.impl.SolutionServiceImpl;
import com.AllMobilize.utils.WebUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/SolutionServlet")
@MultipartConfig
public class SolutionServlet extends BaseServlet {

    private SolutionService solutionService = new SolutionServiceImpl();

    /**
     * 分页显示信息
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数pageNo和pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);

        String title = req.getParameter("solutionTitle");
        String createtime = req.getParameter("createTime");

        req.setAttribute("solutionTitle",title);
        req.setAttribute("createTime",createtime);
        //调用SolutionService.page(pageNo,pageSize)
        Page<Solution> solutionPage = solutionService.page(pageNo,pageSize,title,createtime);

        //保存page到request域中
        req.setAttribute("page",solutionPage);
        solutionPage.setUrl("SolutionServlet?action=page");
        //请求转发
        req.getRequestDispatcher("/admin/solution/solution-list.jsp").forward(req,resp);
    }

    /**
     * 用于前端信息显示
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void getSolutions(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数pageNo和pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), 3);

        String title = req.getParameter("solutionTitle");
        String createtime = req.getParameter("createTime");

        req.setAttribute("solutionTitle",title);
        req.setAttribute("createTime",createtime);
        //调用SolutionService.page(pageNo,pageSize)
        Page<Solution> solutionPage = solutionService.page(pageNo,pageSize,title,createtime);

        //保存page到request域中
        req.setAttribute("page",solutionPage);
        solutionPage.setUrl("SolutionServlet?action=getSolutions");

        ObjectMapper mapper = new ObjectMapper();
        resp.setContentType("application/json;charset=utf-8");
        String jsons = mapper.writeValueAsString(solutionPage);
        resp.getWriter().write(jsons);
    }



    /**
     * 获取上传文件名
     *
     * @param header
     * @return
     */
    public String getFileName(String header) {
        String fileName = "";
        try {
            String[] tempArr1 = header.split(";");
            String[] tempArr2 = tempArr1[2].split("=");
            fileName = tempArr2[1].substring(tempArr2[1].lastIndexOf("\\") + 1).replaceAll("\"", "");
        } catch (Exception e) {
            fileName = "";
        }
        return fileName;
    }



    /**
     * 添加解决案例
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void saveSolution(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        pageNo += 1;

        req.setCharacterEncoding("utf-8");

        resp.setContentType("text/html;charset=utf-8");


        /**
         * 获取要上传文件的路径
         */
        String savePath = req.getServletContext().getRealPath("attached");

        System.out.println(savePath);

        /*************************** 文件上传开始 **********************************/
        // 获取要上传的文件域
        Part part = req.getPart("solutionpic");
        String header = part.getHeader("content-disposition");
        String fileName = getFileName(header);
        System.out.println("fileName:" + fileName);

        File file = new File(savePath+File.separator + fileName);
        if(!file.exists()){
            //先得到文件的上级目录，并创建上级目录，在创建文件
            file.getParentFile().mkdir();
            try {

                //创建文件

                file.createNewFile();

            } catch (IOException e) {

                e.printStackTrace();

            }

        }

        if (!fileName.equals("")) {
            part.write(savePath + File.separator + fileName);
        }
        /*************************** 文件上传结束 **********************************/


        //获取参数，封装为Solution对象
        Solution solution = WebUtils.copyParamToBean(req.getParameterMap(),new Solution());
        solution.setCreatetime(new Date());
        solution.setSolutionpic(fileName);
        //保存解决方案信息
       // System.out.println(solution);
        solutionService.saveSolution(solution);
        //跳转到解决方案信息列表
        resp.sendRedirect(req.getContextPath()+"/SolutionServlet?action=page&pageNo="+pageNo);
    }

    protected void deleteSolution(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        pageNo += 1;
        //获取参数id
        String id =req.getParameter("solutionid");
        int i = WebUtils.parseInt(id,0);
        //删除解决方案信息
        solutionService.deleteSolutionById(i);
        //跳转到解决方案信息列表
        resp.sendRedirect(req.getContextPath()+"/SolutionServlet?action=page&pageNo="+pageNo);
    }

    protected void updateSolution(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println(req.getParameter("solutiontitle"));
        //获取参数，封装为Solution对象
        Solution solution = WebUtils.copyParamToBean(req.getParameterMap(),new Solution());
       // System.out.println(solution);
        //保存解决方案信息
        solutionService.updateSolution(solution);
        //跳转到解决方案信息列表
        resp.sendRedirect(req.getContextPath()+"/SolutionServlet?action=page&pageNo="+req.getParameter("pageNo"));
    }

    protected void getSolution(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求的参数
        int id = WebUtils.parseInt(req.getParameter("solutionid"),0);

        //得到解决方案信息
        Solution solution = solutionService.getSolutionById(id);
        req.setAttribute("solution",solution);
        //跳转到解决方案信息列表
        req.getRequestDispatcher("/admin/solution/solution-update.jsp").forward(req,resp);
    }

}