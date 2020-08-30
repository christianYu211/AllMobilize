package com.AllMobilize.web.servlet;

import com.AllMobilize.dao.CustomcaseDao;
import com.AllMobilize.pojo.Customcase;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Solution;
import com.AllMobilize.service.CustomcaseService;
import com.AllMobilize.service.impl.CustomcaseServiceImpl;
import com.AllMobilize.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CustomcaseServlet")
public class CustomcaseServlet extends BaseServlet {

    CustomcaseService customcaseService = new CustomcaseServiceImpl();
    /**
     * 
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数pageNo和pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);

        //调用customcaseService.page(pageNo,pageSize)
        Page<Customcase> customcasePage = customcaseService.page(pageNo,pageSize);
        System.out.println(customcasePage);
        //保存page到request域中
        req.setAttribute("page",customcasePage);
        customcasePage.setUrl("CustomcaseServlet?action=page");
        //请求转发
        req.getRequestDispatcher("/admin/customcase/customcase-list.jsp").forward(req,resp);
    }

}
