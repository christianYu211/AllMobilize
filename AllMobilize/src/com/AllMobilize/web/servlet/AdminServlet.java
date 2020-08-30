package com.AllMobilize.web.servlet;

import com.AllMobilize.dao.AdminDao;
import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Solution;
import com.AllMobilize.service.AdminService;
import com.AllMobilize.service.impl.AdminServiceImpl;
import com.AllMobilize.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AdminServlet")
public class AdminServlet extends BaseServlet {

    AdminService ads = new AdminServiceImpl();
    /**
     * 登录检测
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取用户名和密码
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        Admin admin = ads.login(username,password);
        if(!ads.existsAdmin(username)){
            req.setAttribute("msg","用户名错误");
            req.getRequestDispatcher("admin/login.jsp").forward(req,resp);
        }else if(admin == null){
            req.setAttribute("username",username);
            req.setAttribute("msg","密码错误");
            req.getRequestDispatcher("admin/login.jsp").forward(req,resp);
        }else{
            //保存到session中
            req.getSession().setAttribute("admin",admin);
            req.getRequestDispatcher("admin/index.jsp").forward(req,resp);
        }
    }

    public void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //销毁session中的登录信息
        req.getSession().invalidate();
        //重定向到登录界面
        req.getRequestDispatcher("admin/login.jsp").forward(req,resp);

    }


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

        //调用AdminService.page(pageNo,pageSize)
        Page<Admin> solutionPage = ads.page(pageNo,pageSize);

        //保存page到request域中
        req.setAttribute("page",solutionPage);
        solutionPage.setUrl("AdminServlet?action=page");
        //请求转发
        req.getRequestDispatcher("/admin/managersystem/admin-list.jsp").forward(req,resp);
    }

}
